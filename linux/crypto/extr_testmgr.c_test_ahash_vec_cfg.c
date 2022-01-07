
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct testvec_config {int req_flags; scalar_t__ finalization_type; int name; int nosimd; } ;
struct test_sglist {unsigned int nents; struct scatterlist* sgl; } ;
struct test_sg_division {scalar_t__ flush_type; int nosimd; } ;
struct scatterlist {scalar_t__ length; } ;
struct hash_testvec {int setkey_error; int digest_error; unsigned int psize; int ksize; int key; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int * __ctx; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ FINALIZATION_TYPE_DIGEST ;
 scalar_t__ FINALIZATION_TYPE_FINAL ;
 scalar_t__ FLUSH_TYPE_NONE ;
 scalar_t__ FLUSH_TYPE_REIMPORT ;
 int HASH_MAX_DIGESTSIZE ;
 int TESTMGR_POISON_LEN ;
 int XBUFSIZE ;
 int ahash_request_set_callback (struct ahash_request*,int const,int ,int *) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,unsigned int) ;
 int build_hash_sglist (struct test_sglist*,struct hash_testvec const*,struct testvec_config const*,unsigned int const,struct test_sg_division const**) ;
 int check_hash_result (char*,int *,unsigned int const,struct hash_testvec const*,char const*,char const*,struct testvec_config const*) ;
 int check_nonfinal_ahash_op (char*,int,int *,unsigned int const,char const*,char const*,struct testvec_config const*) ;
 unsigned int crypto_ahash_alignmask (struct crypto_ahash*) ;
 int crypto_ahash_digest ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_export (struct ahash_request*,int *) ;
 int crypto_ahash_final ;
 int crypto_ahash_finup ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int crypto_ahash_import (struct ahash_request*,int *) ;
 int crypto_ahash_init ;
 int crypto_ahash_reqsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_setkey (struct crypto_ahash*,int ,int ) ;
 unsigned int crypto_ahash_statesize (struct crypto_ahash*) ;
 int crypto_ahash_update ;
 int crypto_req_done ;
 int do_ahash_op (int ,struct ahash_request*,int *,int ) ;
 int pr_err (char*,char const*,...) ;
 int testmgr_is_poison (int *,int) ;
 int testmgr_poison (int *,int) ;
 int wait ;

__attribute__((used)) static int test_ahash_vec_cfg(const char *driver,
         const struct hash_testvec *vec,
         const char *vec_name,
         const struct testvec_config *cfg,
         struct ahash_request *req,
         struct test_sglist *tsgl,
         u8 *hashstate)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 const unsigned int alignmask = crypto_ahash_alignmask(tfm);
 const unsigned int digestsize = crypto_ahash_digestsize(tfm);
 const unsigned int statesize = crypto_ahash_statesize(tfm);
 const u32 req_flags = CRYPTO_TFM_REQ_MAY_BACKLOG | cfg->req_flags;
 const struct test_sg_division *divs[XBUFSIZE];
 DECLARE_CRYPTO_WAIT(wait);
 unsigned int i;
 struct scatterlist *pending_sgl;
 unsigned int pending_len;
 u8 result[HASH_MAX_DIGESTSIZE + TESTMGR_POISON_LEN];
 int err;


 if (vec->ksize) {
  err = crypto_ahash_setkey(tfm, vec->key, vec->ksize);
  if (err) {
   if (err == vec->setkey_error)
    return 0;
   pr_err("alg: ahash: %s setkey failed on test vector %s; expected_error=%d, actual_error=%d, flags=%#x\n",
          driver, vec_name, vec->setkey_error, err,
          crypto_ahash_get_flags(tfm));
   return err;
  }
  if (vec->setkey_error) {
   pr_err("alg: ahash: %s setkey unexpectedly succeeded on test vector %s; expected_error=%d\n",
          driver, vec_name, vec->setkey_error);
   return -EINVAL;
  }
 }


 err = build_hash_sglist(tsgl, vec, cfg, alignmask, divs);
 if (err) {
  pr_err("alg: ahash: %s: error preparing scatterlist for test vector %s, cfg=\"%s\"\n",
         driver, vec_name, cfg->name);
  return err;
 }



 testmgr_poison(req->__ctx, crypto_ahash_reqsize(tfm));
 testmgr_poison(result, digestsize + TESTMGR_POISON_LEN);

 if (cfg->finalization_type == FINALIZATION_TYPE_DIGEST ||
     vec->digest_error) {

  ahash_request_set_callback(req, req_flags, crypto_req_done,
        &wait);
  ahash_request_set_crypt(req, tsgl->sgl, result, vec->psize);
  err = do_ahash_op(crypto_ahash_digest, req, &wait, cfg->nosimd);
  if (err) {
   if (err == vec->digest_error)
    return 0;
   pr_err("alg: ahash: %s digest() failed on test vector %s; expected_error=%d, actual_error=%d, cfg=\"%s\"\n",
          driver, vec_name, vec->digest_error, err,
          cfg->name);
   return err;
  }
  if (vec->digest_error) {
   pr_err("alg: ahash: %s digest() unexpectedly succeeded on test vector %s; expected_error=%d, cfg=\"%s\"\n",
          driver, vec_name, vec->digest_error, cfg->name);
   return -EINVAL;
  }
  goto result_ready;
 }



 ahash_request_set_callback(req, req_flags, crypto_req_done, &wait);
 ahash_request_set_crypt(req, ((void*)0), result, 0);
 err = do_ahash_op(crypto_ahash_init, req, &wait, cfg->nosimd);
 err = check_nonfinal_ahash_op("init", err, result, digestsize,
          driver, vec_name, cfg);
 if (err)
  return err;

 pending_sgl = ((void*)0);
 pending_len = 0;
 for (i = 0; i < tsgl->nents; i++) {
  if (divs[i]->flush_type != FLUSH_TYPE_NONE &&
      pending_sgl != ((void*)0)) {

   ahash_request_set_callback(req, req_flags,
         crypto_req_done, &wait);
   ahash_request_set_crypt(req, pending_sgl, result,
      pending_len);
   err = do_ahash_op(crypto_ahash_update, req, &wait,
       divs[i]->nosimd);
   err = check_nonfinal_ahash_op("update", err,
            result, digestsize,
            driver, vec_name, cfg);
   if (err)
    return err;
   pending_sgl = ((void*)0);
   pending_len = 0;
  }
  if (divs[i]->flush_type == FLUSH_TYPE_REIMPORT) {

   testmgr_poison(hashstate + statesize,
           TESTMGR_POISON_LEN);
   err = crypto_ahash_export(req, hashstate);
   err = check_nonfinal_ahash_op("export", err,
            result, digestsize,
            driver, vec_name, cfg);
   if (err)
    return err;
   if (!testmgr_is_poison(hashstate + statesize,
            TESTMGR_POISON_LEN)) {
    pr_err("alg: ahash: %s export() overran state buffer on test vector %s, cfg=\"%s\"\n",
           driver, vec_name, cfg->name);
    return -EOVERFLOW;
   }

   testmgr_poison(req->__ctx, crypto_ahash_reqsize(tfm));
   err = crypto_ahash_import(req, hashstate);
   err = check_nonfinal_ahash_op("import", err,
            result, digestsize,
            driver, vec_name, cfg);
   if (err)
    return err;
  }
  if (pending_sgl == ((void*)0))
   pending_sgl = &tsgl->sgl[i];
  pending_len += tsgl->sgl[i].length;
 }

 ahash_request_set_callback(req, req_flags, crypto_req_done, &wait);
 ahash_request_set_crypt(req, pending_sgl, result, pending_len);
 if (cfg->finalization_type == FINALIZATION_TYPE_FINAL) {

  err = do_ahash_op(crypto_ahash_update, req, &wait, cfg->nosimd);
  err = check_nonfinal_ahash_op("update", err, result, digestsize,
           driver, vec_name, cfg);
  if (err)
   return err;
  err = do_ahash_op(crypto_ahash_final, req, &wait, cfg->nosimd);
  if (err) {
   pr_err("alg: ahash: %s final() failed with err %d on test vector %s, cfg=\"%s\"\n",
          driver, err, vec_name, cfg->name);
   return err;
  }
 } else {

  err = do_ahash_op(crypto_ahash_finup, req, &wait, cfg->nosimd);
  if (err) {
   pr_err("alg: ahash: %s finup() failed with err %d on test vector %s, cfg=\"%s\"\n",
          driver, err, vec_name, cfg->name);
   return err;
  }
 }

result_ready:
 return check_hash_result("ahash", result, digestsize, vec, vec_name,
     driver, cfg);
}

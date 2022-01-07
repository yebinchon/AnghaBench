
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_sglist {int dummy; } ;
typedef struct test_sglist u8 ;
typedef int u32 ;
typedef struct test_sglist shash_desc ;
struct hash_testvec {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 unsigned int TESTMGR_POISON_LEN ;
 struct ahash_request* ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (struct ahash_request*) ;
 int alloc_shash (char const*,int ,int ,struct crypto_shash**,struct test_sglist**) ;
 int cond_resched () ;
 unsigned int crypto_ahash_statesize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_alloc_ahash (char const*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_statesize (struct crypto_shash*) ;
 int destroy_test_sglist (struct test_sglist*) ;
 scalar_t__ init_test_sglist (struct test_sglist*) ;
 int kfree (struct test_sglist*) ;
 struct test_sglist* kmalloc (unsigned int,int ) ;
 unsigned int max (unsigned int,int ) ;
 int pr_err (char*,char const*,...) ;
 int test_hash_vec (char const*,struct hash_testvec const*,unsigned int,struct ahash_request*,struct test_sglist*,struct test_sglist*,struct test_sglist*) ;
 int test_hash_vs_generic_impl (char const*,char const*,unsigned int,struct ahash_request*,struct test_sglist*,struct test_sglist*,struct test_sglist*) ;

__attribute__((used)) static int __alg_test_hash(const struct hash_testvec *vecs,
      unsigned int num_vecs, const char *driver,
      u32 type, u32 mask,
      const char *generic_driver, unsigned int maxkeysize)
{
 struct crypto_ahash *atfm = ((void*)0);
 struct ahash_request *req = ((void*)0);
 struct crypto_shash *stfm = ((void*)0);
 struct shash_desc *desc = ((void*)0);
 struct test_sglist *tsgl = ((void*)0);
 u8 *hashstate = ((void*)0);
 unsigned int statesize;
 unsigned int i;
 int err;






 atfm = crypto_alloc_ahash(driver, type, mask);
 if (IS_ERR(atfm)) {
  pr_err("alg: hash: failed to allocate transform for %s: %ld\n",
         driver, PTR_ERR(atfm));
  return PTR_ERR(atfm);
 }

 req = ahash_request_alloc(atfm, GFP_KERNEL);
 if (!req) {
  pr_err("alg: hash: failed to allocate request for %s\n",
         driver);
  err = -ENOMEM;
  goto out;
 }





 err = alloc_shash(driver, type, mask, &stfm, &desc);
 if (err)
  goto out;

 tsgl = kmalloc(sizeof(*tsgl), GFP_KERNEL);
 if (!tsgl || init_test_sglist(tsgl) != 0) {
  pr_err("alg: hash: failed to allocate test buffers for %s\n",
         driver);
  kfree(tsgl);
  tsgl = ((void*)0);
  err = -ENOMEM;
  goto out;
 }

 statesize = crypto_ahash_statesize(atfm);
 if (stfm)
  statesize = max(statesize, crypto_shash_statesize(stfm));
 hashstate = kmalloc(statesize + TESTMGR_POISON_LEN, GFP_KERNEL);
 if (!hashstate) {
  pr_err("alg: hash: failed to allocate hash state buffer for %s\n",
         driver);
  err = -ENOMEM;
  goto out;
 }

 for (i = 0; i < num_vecs; i++) {
  err = test_hash_vec(driver, &vecs[i], i, req, desc, tsgl,
        hashstate);
  if (err)
   goto out;
  cond_resched();
 }
 err = test_hash_vs_generic_impl(driver, generic_driver, maxkeysize, req,
     desc, tsgl, hashstate);
out:
 kfree(hashstate);
 if (tsgl) {
  destroy_test_sglist(tsgl);
  kfree(tsgl);
 }
 kfree(desc);
 crypto_free_shash(stfm);
 ahash_request_free(req);
 crypto_free_ahash(atfm);
 return err;
}

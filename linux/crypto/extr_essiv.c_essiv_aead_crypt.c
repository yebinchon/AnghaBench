
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scatterlist {int offset; } ;
struct TYPE_2__ {int aead; } ;
struct essiv_tfm_ctx {int ivoffset; TYPE_1__ u; int essiv_cipher; } ;
struct aead_request {int assoclen; int * iv; int cryptlen; struct scatterlist* dst; struct scatterlist* src; } ;
struct essiv_aead_request_ctx {int * assoc; struct scatterlist* sg; struct aead_request aead_req; } ;
struct crypto_aead {int dummy; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct essiv_aead_request_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,struct aead_request*) ;
 int aead_request_set_crypt (struct aead_request*,struct scatterlist*,struct scatterlist*,int ,int *) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 struct essiv_tfm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_cipher_encrypt_one (int ,int *,int *) ;
 int essiv_aead_done ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 struct scatterlist* scatterwalk_ffwd (struct scatterlist*,struct scatterlist*,int) ;
 int scatterwalk_map_and_copy (int *,struct scatterlist*,int ,int,int) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_nents_for_len (struct scatterlist*,int) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int *,int) ;
 int sg_set_page (struct scatterlist*,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int essiv_aead_crypt(struct aead_request *req, bool enc)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 const struct essiv_tfm_ctx *tctx = crypto_aead_ctx(tfm);
 struct essiv_aead_request_ctx *rctx = aead_request_ctx(req);
 struct aead_request *subreq = &rctx->aead_req;
 struct scatterlist *src = req->src;
 int err;

 crypto_cipher_encrypt_one(tctx->essiv_cipher, req->iv, req->iv);






 rctx->assoc = ((void*)0);
 if (req->src == req->dst || !enc) {
  scatterwalk_map_and_copy(req->iv, req->dst,
      req->assoclen - crypto_aead_ivsize(tfm),
      crypto_aead_ivsize(tfm), 1);
 } else {
  u8 *iv = (u8 *)aead_request_ctx(req) + tctx->ivoffset;
  int ivsize = crypto_aead_ivsize(tfm);
  int ssize = req->assoclen - ivsize;
  struct scatterlist *sg;
  int nents;

  if (ssize < 0)
   return -EINVAL;

  nents = sg_nents_for_len(req->src, ssize);
  if (nents < 0)
   return -EINVAL;

  memcpy(iv, req->iv, ivsize);
  sg_init_table(rctx->sg, 4);

  if (unlikely(nents > 1)) {




   rctx->assoc = kmalloc(ssize, GFP_ATOMIC);
   if (!rctx->assoc)
    return -ENOMEM;

   scatterwalk_map_and_copy(rctx->assoc, req->src, 0,
       ssize, 0);
   sg_set_buf(rctx->sg, rctx->assoc, ssize);
  } else {
   sg_set_page(rctx->sg, sg_page(req->src), ssize,
        req->src->offset);
  }

  sg_set_buf(rctx->sg + 1, iv, ivsize);
  sg = scatterwalk_ffwd(rctx->sg + 2, req->src, req->assoclen);
  if (sg != rctx->sg + 2)
   sg_chain(rctx->sg, 3, sg);

  src = rctx->sg;
 }

 aead_request_set_tfm(subreq, tctx->u.aead);
 aead_request_set_ad(subreq, req->assoclen);
 aead_request_set_callback(subreq, aead_request_flags(req),
      essiv_aead_done, req);
 aead_request_set_crypt(subreq, src, req->dst, req->cryptlen, req->iv);

 err = enc ? crypto_aead_encrypt(subreq) :
      crypto_aead_decrypt(subreq);

 if (rctx->assoc && err != -EINPROGRESS)
  kfree(rctx->assoc);
 return err;
}

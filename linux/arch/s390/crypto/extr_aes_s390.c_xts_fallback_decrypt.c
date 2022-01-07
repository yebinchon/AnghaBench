
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s390_xts_ctx {int fallback; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int info; int flags; struct crypto_blkcipher* tfm; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct s390_xts_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 unsigned int crypto_skcipher_decrypt (int ) ;
 int req ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,unsigned int,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;

__attribute__((used)) static int xts_fallback_decrypt(struct blkcipher_desc *desc,
  struct scatterlist *dst, struct scatterlist *src,
  unsigned int nbytes)
{
 struct crypto_blkcipher *tfm = desc->tfm;
 struct s390_xts_ctx *xts_ctx = crypto_blkcipher_ctx(tfm);
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, xts_ctx->fallback);
 unsigned int ret;

 skcipher_request_set_sync_tfm(req, xts_ctx->fallback);
 skcipher_request_set_callback(req, desc->flags, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, src, dst, nbytes, desc->info);

 ret = crypto_skcipher_decrypt(req);

 skcipher_request_zero(req);
 return ret;
}

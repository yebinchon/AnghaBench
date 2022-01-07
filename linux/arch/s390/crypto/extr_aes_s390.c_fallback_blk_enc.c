
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_2__ {int blk; } ;
struct s390_aes_ctx {TYPE_1__ fallback; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int info; int flags; struct crypto_blkcipher* tfm; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct s390_aes_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 unsigned int crypto_skcipher_encrypt (int ) ;
 int req ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,unsigned int,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;

__attribute__((used)) static int fallback_blk_enc(struct blkcipher_desc *desc,
  struct scatterlist *dst, struct scatterlist *src,
  unsigned int nbytes)
{
 unsigned int ret;
 struct crypto_blkcipher *tfm = desc->tfm;
 struct s390_aes_ctx *sctx = crypto_blkcipher_ctx(tfm);
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, sctx->fallback.blk);

 skcipher_request_set_sync_tfm(req, sctx->fallback.blk);
 skcipher_request_set_callback(req, desc->flags, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, src, dst, nbytes, desc->info);

 ret = crypto_skcipher_encrypt(req);
 return ret;
}

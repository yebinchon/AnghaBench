
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {unsigned int cryptlen; int dst; } ;
struct crypto_skcipher {int dummy; } ;
struct adiantum_tfm_ctx {int blockcipher; } ;
struct TYPE_2__ {int bignum; int bytes; } ;
struct adiantum_request_ctx {TYPE_1__ rbuf; int header_hash; int enc; } ;
typedef int le128 ;


 unsigned int BLOCKCIPHER_BLOCK_SIZE ;
 int adiantum_hash_message (struct skcipher_request*,int ,int *) ;
 int crypto_cipher_decrypt_one (int ,int ,int ) ;
 struct adiantum_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int le128_add (int *,int *,int *) ;
 int le128_sub (int *,int *,int *) ;
 int scatterwalk_map_and_copy (int *,int ,unsigned int const,unsigned int,int) ;
 struct adiantum_request_ctx* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int adiantum_finish(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 const struct adiantum_tfm_ctx *tctx = crypto_skcipher_ctx(tfm);
 struct adiantum_request_ctx *rctx = skcipher_request_ctx(req);
 const unsigned int bulk_len = req->cryptlen - BLOCKCIPHER_BLOCK_SIZE;
 le128 digest;
 int err;


 if (!rctx->enc)
  crypto_cipher_decrypt_one(tctx->blockcipher, rctx->rbuf.bytes,
       rctx->rbuf.bytes);






 err = adiantum_hash_message(req, req->dst, &digest);
 if (err)
  return err;
 le128_add(&digest, &digest, &rctx->header_hash);
 le128_sub(&rctx->rbuf.bignum, &rctx->rbuf.bignum, &digest);
 scatterwalk_map_and_copy(&rctx->rbuf.bignum, req->dst,
     bulk_len, BLOCKCIPHER_BLOCK_SIZE, 1);
 return 0;
}

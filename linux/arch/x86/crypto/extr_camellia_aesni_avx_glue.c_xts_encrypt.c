
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct camellia_xts_ctx {int crypt_ctx; int tweak_ctx; } ;


 int XTS_TWEAK_CAST (int ) ;
 int camellia_enc_blk ;
 int camellia_enc_xts ;
 struct camellia_xts_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int glue_xts_req_128bit (int *,struct skcipher_request*,int ,int *,int *,int) ;

__attribute__((used)) static int xts_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct camellia_xts_ctx *ctx = crypto_skcipher_ctx(tfm);

 return glue_xts_req_128bit(&camellia_enc_xts, req,
       XTS_TWEAK_CAST(camellia_enc_blk),
       &ctx->tweak_ctx, &ctx->crypt_ctx, 0);
}

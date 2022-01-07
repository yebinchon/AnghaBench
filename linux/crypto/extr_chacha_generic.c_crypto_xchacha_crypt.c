
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skcipher_request {scalar_t__ iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int nrounds; int key; } ;


 int chacha_stream_xor (struct skcipher_request*,struct chacha_ctx*,int *) ;
 int crypto_chacha_init (int *,struct chacha_ctx*,scalar_t__) ;
 struct chacha_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int hchacha_block (int *,int ,int ) ;
 int memcpy (int *,scalar_t__,int) ;

int crypto_xchacha_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct chacha_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct chacha_ctx subctx;
 u32 state[16];
 u8 real_iv[16];


 crypto_chacha_init(state, ctx, req->iv);
 hchacha_block(state, subctx.key, ctx->nrounds);
 subctx.nrounds = ctx->nrounds;


 memcpy(&real_iv[0], req->iv + 24, 8);
 memcpy(&real_iv[8], req->iv + 16, 8);


 return chacha_stream_xor(req, &subctx, real_iv);
}

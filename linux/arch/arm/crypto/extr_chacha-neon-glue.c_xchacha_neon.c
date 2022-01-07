
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skcipher_request {scalar_t__ cryptlen; scalar_t__ iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int nrounds; int key; } ;


 scalar_t__ CHACHA_BLOCK_SIZE ;
 int chacha_neon_stream_xor (struct skcipher_request*,struct chacha_ctx*,int *) ;
 int crypto_chacha_init (int *,struct chacha_ctx*,scalar_t__) ;
 int crypto_simd_usable () ;
 struct chacha_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int crypto_xchacha_crypt (struct skcipher_request*) ;
 int hchacha_block_neon (int *,int ,int ) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static int xchacha_neon(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct chacha_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct chacha_ctx subctx;
 u32 state[16];
 u8 real_iv[16];

 if (req->cryptlen <= CHACHA_BLOCK_SIZE || !crypto_simd_usable())
  return crypto_xchacha_crypt(req);

 crypto_chacha_init(state, ctx, req->iv);

 kernel_neon_begin();
 hchacha_block_neon(state, subctx.key, ctx->nrounds);
 kernel_neon_end();
 subctx.nrounds = ctx->nrounds;

 memcpy(&real_iv[0], req->iv + 24, 8);
 memcpy(&real_iv[8], req->iv + 16, 8);
 return chacha_neon_stream_xor(req, &subctx, real_iv);
}

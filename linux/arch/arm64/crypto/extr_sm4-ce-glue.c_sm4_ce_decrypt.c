
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_sm4_ctx {int rkey_dec; } ;


 int crypto_simd_usable () ;
 int crypto_sm4_decrypt (struct crypto_tfm*,int *,int const*) ;
 struct crypto_sm4_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sm4_ce_do_crypt (int ,int *,int const*) ;

__attribute__((used)) static void sm4_ce_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct crypto_sm4_ctx *ctx = crypto_tfm_ctx(tfm);

 if (!crypto_simd_usable()) {
  crypto_sm4_decrypt(tfm, out, in);
 } else {
  kernel_neon_begin();
  sm4_ce_do_crypt(ctx->rkey_dec, out, in);
  kernel_neon_end();
 }
}

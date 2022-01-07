
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;


 struct crypto_aes_ctx* aes_ctx (int ) ;
 int aes_decrypt (struct crypto_aes_ctx*,int *,int const*) ;
 int aesni_dec (struct crypto_aes_ctx*,int *,int const*) ;
 int crypto_simd_usable () ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;

__attribute__((used)) static void aesni_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct crypto_aes_ctx *ctx = aes_ctx(crypto_tfm_ctx(tfm));

 if (!crypto_simd_usable()) {
  aes_decrypt(ctx, dst, src);
 } else {
  kernel_fpu_begin();
  aesni_dec(ctx, dst, src);
  kernel_fpu_end();
 }
}

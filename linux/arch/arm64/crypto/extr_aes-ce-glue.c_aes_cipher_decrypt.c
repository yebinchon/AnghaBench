
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int key_dec; } ;


 int __aes_ce_decrypt (int ,int *,int const*,int ) ;
 int aes_decrypt (struct crypto_aes_ctx*,int *,int const*) ;
 int crypto_simd_usable () ;
 struct crypto_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int num_rounds (struct crypto_aes_ctx*) ;

__attribute__((used)) static void aes_cipher_decrypt(struct crypto_tfm *tfm, u8 dst[], u8 const src[])
{
 struct crypto_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 if (!crypto_simd_usable()) {
  aes_decrypt(ctx, dst, src);
  return;
 }

 kernel_neon_begin();
 __aes_ce_decrypt(ctx->key_dec, dst, src, num_rounds(ctx));
 kernel_neon_end();
}

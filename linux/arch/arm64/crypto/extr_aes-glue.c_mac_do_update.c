
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aes_ctx {int key_length; int key_enc; } ;


 int AES_BLOCK_SIZE ;
 int aes_encrypt (struct crypto_aes_ctx*,int *,int *) ;
 int aes_mac_update (int const*,int ,int,int,int *,int,int) ;
 scalar_t__ crypto_simd_usable () ;
 int crypto_xor (int *,int const*,int ) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;

__attribute__((used)) static void mac_do_update(struct crypto_aes_ctx *ctx, u8 const in[], int blocks,
     u8 dg[], int enc_before, int enc_after)
{
 int rounds = 6 + ctx->key_length / 4;

 if (crypto_simd_usable()) {
  kernel_neon_begin();
  aes_mac_update(in, ctx->key_enc, rounds, blocks, dg, enc_before,
          enc_after);
  kernel_neon_end();
 } else {
  if (enc_before)
   aes_encrypt(ctx, dg, dg);

  while (blocks--) {
   crypto_xor(dg, in, AES_BLOCK_SIZE);
   in += AES_BLOCK_SIZE;

   if (blocks || enc_after)
    aes_encrypt(ctx, dg, dg);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int key_length; int key_dec; } ;


 int __aes_arm64_decrypt (int ,int *,int const*,int) ;
 struct crypto_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void aes_arm64_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct crypto_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 int rounds = 6 + ctx->key_length / 4;

 __aes_arm64_decrypt(ctx->key_dec, out, in, rounds);
}

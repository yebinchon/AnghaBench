
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct camellia_sparc64_ctx {int key_len; int * encrypt_key; } ;


 int camellia_sparc64_crypt (int *,int const*,int *,int ) ;
 struct camellia_sparc64_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void camellia_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct camellia_sparc64_ctx *ctx = crypto_tfm_ctx(tfm);

 camellia_sparc64_crypt(&ctx->encrypt_key[0],
          (const u32 *) src,
          (u32 *) dst, ctx->key_len);
}

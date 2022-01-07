
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct camellia_sparc64_ctx {unsigned int key_len; int * decrypt_key; int * encrypt_key; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int camellia_sparc64_key_expand (int const*,int *,unsigned int,int *) ;
 struct camellia_sparc64_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int camellia_set_key(struct crypto_tfm *tfm, const u8 *_in_key,
       unsigned int key_len)
{
 struct camellia_sparc64_ctx *ctx = crypto_tfm_ctx(tfm);
 const u32 *in_key = (const u32 *) _in_key;
 u32 *flags = &tfm->crt_flags;

 if (key_len != 16 && key_len != 24 && key_len != 32) {
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 ctx->key_len = key_len;

 camellia_sparc64_key_expand(in_key, &ctx->encrypt_key[0],
        key_len, &ctx->decrypt_key[0]);
 return 0;
}

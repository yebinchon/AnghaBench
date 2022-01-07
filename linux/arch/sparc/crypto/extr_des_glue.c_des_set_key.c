
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des_sparc64_ctx {int * encrypt_expkey; int * decrypt_expkey; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_des_verify_key (struct crypto_tfm*,int const*) ;
 struct des_sparc64_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int des_sparc64_key_expand (int const*,int *) ;
 int encrypt_to_decrypt (int *,int *) ;

__attribute__((used)) static int des_set_key(struct crypto_tfm *tfm, const u8 *key,
         unsigned int keylen)
{
 struct des_sparc64_ctx *dctx = crypto_tfm_ctx(tfm);
 int err;





 err = crypto_des_verify_key(tfm, key);
 if (err)
  return err;

 des_sparc64_key_expand((const u32 *) key, &dctx->encrypt_expkey[0]);
 encrypt_to_decrypt(&dctx->decrypt_expkey[0], &dctx->encrypt_expkey[0]);

 return 0;
}

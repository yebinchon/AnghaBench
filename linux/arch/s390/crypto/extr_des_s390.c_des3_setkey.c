
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_des_ctx {int key; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_des3_ede_verify_key (struct crypto_tfm*,int const*) ;
 struct s390_des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int des3_setkey(struct crypto_tfm *tfm, const u8 *key,
         unsigned int key_len)
{
 struct s390_des_ctx *ctx = crypto_tfm_ctx(tfm);
 int err;

 err = crypto_des3_ede_verify_key(tfm, key);
 if (err)
  return err;

 memcpy(ctx->key, key, key_len);
 return 0;
}

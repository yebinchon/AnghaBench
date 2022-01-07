
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int aes_set_key_common (struct crypto_tfm*,int ,int const*,unsigned int) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int aes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
         unsigned int key_len)
{
 return aes_set_key_common(tfm, crypto_tfm_ctx(tfm), in_key, key_len);
}

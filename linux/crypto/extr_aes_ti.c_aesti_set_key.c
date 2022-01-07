
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;


 int aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 struct crypto_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int aesti_set_key(struct crypto_tfm *tfm, const u8 *in_key,
    unsigned int key_len)
{
 struct crypto_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 return aes_expandkey(ctx, in_key, key_len);
}

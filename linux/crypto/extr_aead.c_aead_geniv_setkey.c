
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct aead_geniv_ctx {int child; } ;


 struct aead_geniv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setkey (int ,int const*,unsigned int) ;

__attribute__((used)) static int aead_geniv_setkey(struct crypto_aead *tfm,
        const u8 *key, unsigned int keylen)
{
 struct aead_geniv_ctx *ctx = crypto_aead_ctx(tfm);

 return crypto_aead_setkey(ctx->child, key, keylen);
}

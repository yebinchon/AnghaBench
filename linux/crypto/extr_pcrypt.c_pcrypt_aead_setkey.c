
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcrypt_aead_ctx {int child; } ;
struct crypto_aead {int dummy; } ;


 struct pcrypt_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setkey (int ,int const*,unsigned int) ;

__attribute__((used)) static int pcrypt_aead_setkey(struct crypto_aead *parent,
         const u8 *key, unsigned int keylen)
{
 struct pcrypt_aead_ctx *ctx = crypto_aead_ctx(parent);

 return crypto_aead_setkey(ctx->child, key, keylen);
}

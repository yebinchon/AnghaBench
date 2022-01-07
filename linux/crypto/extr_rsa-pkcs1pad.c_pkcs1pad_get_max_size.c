
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs1pad_ctx {unsigned int key_size; } ;
struct crypto_akcipher {int dummy; } ;


 struct pkcs1pad_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;

__attribute__((used)) static unsigned int pkcs1pad_get_max_size(struct crypto_akcipher *tfm)
{
 struct pkcs1pad_ctx *ctx = akcipher_tfm_ctx(tfm);







 return ctx->key_size;
}

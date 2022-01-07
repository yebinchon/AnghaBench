
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs1pad_ctx {int key_size; int child; } ;
struct crypto_akcipher {int dummy; } ;


 int ENOTSUPP ;
 int PAGE_SIZE ;
 struct pkcs1pad_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int crypto_akcipher_maxsize (int ) ;
 int crypto_akcipher_set_pub_key (int ,void const*,unsigned int) ;

__attribute__((used)) static int pkcs1pad_set_pub_key(struct crypto_akcipher *tfm, const void *key,
  unsigned int keylen)
{
 struct pkcs1pad_ctx *ctx = akcipher_tfm_ctx(tfm);
 int err;

 ctx->key_size = 0;

 err = crypto_akcipher_set_pub_key(ctx->child, key, keylen);
 if (err)
  return err;


 err = crypto_akcipher_maxsize(ctx->child);
 if (err > PAGE_SIZE)
  return -ENOTSUPP;

 ctx->key_size = err;
 return 0;
}

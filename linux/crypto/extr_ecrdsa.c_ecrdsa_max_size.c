
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int ndigits; } ;
struct ecrdsa_ctx {TYPE_1__ pub_key; } ;
struct crypto_akcipher {int dummy; } ;


 struct ecrdsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;

__attribute__((used)) static unsigned int ecrdsa_max_size(struct crypto_akcipher *tfm)
{
 struct ecrdsa_ctx *ctx = akcipher_tfm_ctx(tfm);





 return ctx->pub_key.ndigits * sizeof(u64);
}

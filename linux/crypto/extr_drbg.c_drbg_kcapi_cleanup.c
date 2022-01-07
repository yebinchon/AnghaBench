
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int crypto_tfm_ctx (struct crypto_tfm*) ;
 int drbg_uninstantiate (int ) ;

__attribute__((used)) static void drbg_kcapi_cleanup(struct crypto_tfm *tfm)
{
 drbg_uninstantiate(crypto_tfm_ctx(tfm));
}

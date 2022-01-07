
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {unsigned int cra_ctxsize; int cra_alignmask; } ;


 int crypto_tfm_ctx_alignment () ;

unsigned int crypto_alg_extsize(struct crypto_alg *alg)
{
 return alg->cra_ctxsize +
        (alg->cra_alignmask & ~(crypto_tfm_ctx_alignment() - 1));
}

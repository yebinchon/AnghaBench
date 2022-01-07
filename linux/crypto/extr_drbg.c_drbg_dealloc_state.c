
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbg_state {int fips_primed; int * prev; int * core; int * d_ops; scalar_t__ reseed_ctr; int * scratchpadbuf; int * C; int * Cbuf; int * V; int * Vbuf; } ;


 int CONFIG_CRYPTO_FIPS ;
 scalar_t__ IS_ENABLED (int ) ;
 int kzfree (int *) ;

__attribute__((used)) static inline void drbg_dealloc_state(struct drbg_state *drbg)
{
 if (!drbg)
  return;
 kzfree(drbg->Vbuf);
 drbg->Vbuf = ((void*)0);
 drbg->V = ((void*)0);
 kzfree(drbg->Cbuf);
 drbg->Cbuf = ((void*)0);
 drbg->C = ((void*)0);
 kzfree(drbg->scratchpadbuf);
 drbg->scratchpadbuf = ((void*)0);
 drbg->reseed_ctr = 0;
 drbg->d_ops = ((void*)0);
 drbg->core = ((void*)0);
 if (IS_ENABLED(CONFIG_CRYPTO_FIPS)) {
  kzfree(drbg->prev);
  drbg->prev = ((void*)0);
  drbg->fips_primed = 0;
 }
}

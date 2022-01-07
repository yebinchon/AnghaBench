
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPACF_KMC ;
 int CPACF_KMC_PRNG ;
 int CPACF_PRNO ;
 int CPACF_PRNO_SHA512_DRNG_GEN ;
 int CPACF_PRNO_TRNG ;
 int PRNG_MODE_SHA512 ;
 int PRNG_MODE_TDES ;
 int PRNG_MODE_TRNG ;
 scalar_t__ cpacf_query_func (int ,int ) ;
 int sclp_early_printk (char*) ;

__attribute__((used)) static int check_prng(void)
{
 if (!cpacf_query_func(CPACF_KMC, CPACF_KMC_PRNG)) {
  sclp_early_printk("KASLR disabled: CPU has no PRNG\n");
  return 0;
 }
 if (cpacf_query_func(CPACF_PRNO, CPACF_PRNO_TRNG))
  return PRNG_MODE_TRNG;
 if (cpacf_query_func(CPACF_PRNO, CPACF_PRNO_SHA512_DRNG_GEN))
  return PRNG_MODE_SHA512;
 else
  return PRNG_MODE_TDES;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct prno_parm {int dummy; } ;
struct prng_parm {scalar_t__ parm_block; } ;
typedef int seed ;
typedef int random ;
typedef int entropy ;
typedef int __u64 ;


 int CPACF_KMC_PRNG ;
 int CPACF_PRNO_SHA512_DRNG_GEN ;
 int CPACF_PRNO_SHA512_DRNG_SEED ;



 int check_prng () ;
 int cpacf_kmc (int ,scalar_t__,char*,char*,int) ;
 int cpacf_prno (int ,struct prno_parm*,char*,int,char*,int) ;
 int cpacf_trng (int *,int ,char*,int) ;
 unsigned long get_tod_clock_fast () ;
 int memcpy (scalar_t__,int *,int) ;

__attribute__((used)) static unsigned long get_random(unsigned long limit)
{
 struct prng_parm prng = {

  .parm_block = {
   0x0F, 0x2B, 0x8E, 0x63, 0x8C, 0x8E, 0xD2, 0x52,
   0x64, 0xB7, 0xA0, 0x7B, 0x75, 0x28, 0xB8, 0xF4,
   0x75, 0x5F, 0xD2, 0xA6, 0x8D, 0x97, 0x11, 0xFF,
   0x49, 0xD8, 0x23, 0xF3, 0x7E, 0x21, 0xEC, 0xA0
  },
 };
 unsigned long seed, random;
 struct prno_parm prno;
 __u64 entropy[4];
 int mode, i;

 mode = check_prng();
 seed = get_tod_clock_fast();
 switch (mode) {
 case 128:
  cpacf_trng(((void*)0), 0, (u8 *) &random, sizeof(random));
  break;
 case 130:
  cpacf_prno(CPACF_PRNO_SHA512_DRNG_SEED, &prno, ((void*)0), 0,
      (u8 *) &seed, sizeof(seed));
  cpacf_prno(CPACF_PRNO_SHA512_DRNG_GEN, &prno, (u8 *) &random,
      sizeof(random), ((void*)0), 0);
  break;
 case 129:

  *(unsigned long *) prng.parm_block ^= seed;
  for (i = 0; i < 16; i++) {
   cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block,
      (char *) entropy, (char *) entropy,
      sizeof(entropy));
   memcpy(prng.parm_block, entropy, sizeof(entropy));
  }
  random = seed;
  cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block, (u8 *) &random,
     (u8 *) &random, sizeof(random));
  break;
 default:
  random = 0;
 }
 return random % limit;
}

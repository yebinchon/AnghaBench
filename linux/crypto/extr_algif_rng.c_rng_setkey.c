
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int crypto_rng_reset (void*,int const*,unsigned int) ;

__attribute__((used)) static int rng_setkey(void *private, const u8 *seed, unsigned int seedlen)
{




 return crypto_rng_reset(private, seed, seedlen);
}

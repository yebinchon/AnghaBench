
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hwrng {int dummy; } ;
struct bcm2835_rng_priv {int dummy; } ;


 int RNG_DATA ;
 int RNG_STATUS ;
 int cpu_relax () ;
 int rng_readl (struct bcm2835_rng_priv*,int ) ;
 struct bcm2835_rng_priv* to_rng_priv (struct hwrng*) ;

__attribute__((used)) static int bcm2835_rng_read(struct hwrng *rng, void *buf, size_t max,
          bool wait)
{
 struct bcm2835_rng_priv *priv = to_rng_priv(rng);
 u32 max_words = max / sizeof(u32);
 u32 num_words, count;

 while ((rng_readl(priv, RNG_STATUS) >> 24) == 0) {
  if (!wait)
   return 0;
  cpu_relax();
 }

 num_words = rng_readl(priv, RNG_STATUS) >> 24;
 if (num_words > max_words)
  num_words = max_words;

 for (count = 0; count < num_words; count++)
  ((u32 *)buf)[count] = rng_readl(priv, RNG_DATA);

 return num_words * sizeof(u32);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int dummy; } ;
struct hisi_rng {scalar_t__ base; } ;
typedef int seed ;


 scalar_t__ RNG_CTRL ;
 int RNG_EN ;
 int RNG_RING_EN ;
 scalar_t__ RNG_SEED ;
 int RNG_SEED_SEL ;
 int get_random_bytes (int*,int) ;
 int seed_sel ;
 struct hisi_rng* to_hisi_rng (struct hwrng*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int hisi_rng_init(struct hwrng *rng)
{
 struct hisi_rng *hrng = to_hisi_rng(rng);
 int val = RNG_EN;
 u32 seed;


 get_random_bytes(&seed, sizeof(seed));

 writel_relaxed(seed, hrng->base + RNG_SEED);






 if (seed_sel == 1)
  val |= RNG_RING_EN | RNG_SEED_SEL;

 writel_relaxed(val, hrng->base + RNG_CTRL);
 return 0;
}

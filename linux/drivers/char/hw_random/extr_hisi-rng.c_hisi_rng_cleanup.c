
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;
struct hisi_rng {scalar_t__ base; } ;


 scalar_t__ RNG_CTRL ;
 struct hisi_rng* to_hisi_rng (struct hwrng*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hisi_rng_cleanup(struct hwrng *rng)
{
 struct hisi_rng *hrng = to_hisi_rng(rng);

 writel_relaxed(0, hrng->base + RNG_CTRL);
}

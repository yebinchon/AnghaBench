
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {scalar_t__ priv; } ;
struct exynos_trng_dev {scalar_t__ mem; int dev; int clk; } ;


 int ERANGE ;
 scalar_t__ EXYNOS_TRNG_CLKDIV ;
 int EXYNOS_TRNG_CLOCK_RATE ;
 scalar_t__ EXYNOS_TRNG_CTRL ;
 int EXYNOS_TRNG_CTRL_RNGEN ;
 scalar_t__ EXYNOS_TRNG_POST_CTRL ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int exynos_trng_init(struct hwrng *rng)
{
 struct exynos_trng_dev *trng = (struct exynos_trng_dev *)rng->priv;
 unsigned long sss_rate;
 u32 val;

 sss_rate = clk_get_rate(trng->clk);





 val = sss_rate / (EXYNOS_TRNG_CLOCK_RATE * 2);
 if (val > 0x7fff) {
  dev_err(trng->dev, "clock divider too large: %d", val);
  return -ERANGE;
 }
 val = val << 1;
 writel_relaxed(val, trng->mem + EXYNOS_TRNG_CLKDIV);


 val = EXYNOS_TRNG_CTRL_RNGEN;
 writel_relaxed(val, trng->mem + EXYNOS_TRNG_CTRL);





 writel_relaxed(0, trng->mem + EXYNOS_TRNG_POST_CTRL);

 return 0;
}

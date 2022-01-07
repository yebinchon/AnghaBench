
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int dummy; } ;
struct bcm2835_rng_priv {scalar_t__ mask_interrupts; int clk; } ;


 int IS_ERR (int ) ;
 int RNG_CTRL ;
 int RNG_INT_MASK ;
 int RNG_INT_OFF ;
 int RNG_RBGEN ;
 int RNG_STATUS ;
 int RNG_WARMUP_COUNT ;
 int clk_prepare_enable (int ) ;
 int rng_readl (struct bcm2835_rng_priv*,int ) ;
 int rng_writel (struct bcm2835_rng_priv*,int ,int ) ;
 struct bcm2835_rng_priv* to_rng_priv (struct hwrng*) ;

__attribute__((used)) static int bcm2835_rng_init(struct hwrng *rng)
{
 struct bcm2835_rng_priv *priv = to_rng_priv(rng);
 int ret = 0;
 u32 val;

 if (!IS_ERR(priv->clk)) {
  ret = clk_prepare_enable(priv->clk);
  if (ret)
   return ret;
 }

 if (priv->mask_interrupts) {

  val = rng_readl(priv, RNG_INT_MASK);
  val |= RNG_INT_OFF;
  rng_writel(priv, val, RNG_INT_MASK);
 }


 rng_writel(priv, RNG_WARMUP_COUNT, RNG_STATUS);
 rng_writel(priv, RNG_RBGEN, RNG_CTRL);

 return ret;
}

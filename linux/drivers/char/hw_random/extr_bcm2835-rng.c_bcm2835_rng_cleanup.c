
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;
struct bcm2835_rng_priv {int clk; } ;


 int IS_ERR (int ) ;
 int RNG_CTRL ;
 int clk_disable_unprepare (int ) ;
 int rng_writel (struct bcm2835_rng_priv*,int ,int ) ;
 struct bcm2835_rng_priv* to_rng_priv (struct hwrng*) ;

__attribute__((used)) static void bcm2835_rng_cleanup(struct hwrng *rng)
{
 struct bcm2835_rng_priv *priv = to_rng_priv(rng);


 rng_writel(priv, 0, RNG_CTRL);

 if (!IS_ERR(priv->clk))
  clk_disable_unprepare(priv->clk);
}

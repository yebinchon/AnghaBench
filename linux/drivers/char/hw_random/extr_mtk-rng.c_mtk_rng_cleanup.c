
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_rng {int clk; scalar_t__ base; } ;
struct hwrng {int dummy; } ;


 scalar_t__ RNG_CTRL ;
 int RNG_EN ;
 int clk_disable_unprepare (int ) ;
 int readl (scalar_t__) ;
 struct mtk_rng* to_mtk_rng (struct hwrng*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_rng_cleanup(struct hwrng *rng)
{
 struct mtk_rng *priv = to_mtk_rng(rng);
 u32 val;

 val = readl(priv->base + RNG_CTRL);
 val &= ~RNG_EN;
 writel(val, priv->base + RNG_CTRL);

 clk_disable_unprepare(priv->clk);
}

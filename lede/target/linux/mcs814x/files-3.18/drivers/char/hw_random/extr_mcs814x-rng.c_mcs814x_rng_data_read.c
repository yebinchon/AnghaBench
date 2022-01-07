
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcs814x_rng_priv {scalar_t__ regs; } ;
struct hwrng {scalar_t__ priv; } ;


 scalar_t__ RND ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int mcs814x_rng_data_read(struct hwrng *rng, u32 *buffer)
{
 struct mcs814x_rng_priv *priv = (struct mcs814x_rng_priv *)rng->priv;

 *buffer = readl_relaxed(priv->regs + RND);

 return 4;
}

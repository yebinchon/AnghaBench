
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm2835_rng_priv {scalar_t__ base; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 int CONFIG_MIPS ;
 scalar_t__ IS_ENABLED (int ) ;
 int __raw_writel (scalar_t__,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rng_writel(struct bcm2835_rng_priv *priv, u32 val,
         u32 offset)
{
 if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  __raw_writel(val, priv->base + offset);
 else
  writel(val, priv->base + offset);
}

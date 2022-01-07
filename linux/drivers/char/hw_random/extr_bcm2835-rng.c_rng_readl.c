
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm2835_rng_priv {scalar_t__ base; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 int CONFIG_MIPS ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ __raw_readl (scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 rng_readl(struct bcm2835_rng_priv *priv, u32 offset)
{



 if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  return __raw_readl(priv->base + offset);
 else
  return readl(priv->base + offset);
}

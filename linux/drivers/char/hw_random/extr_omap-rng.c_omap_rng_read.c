
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct omap_rng_dev {TYPE_1__* pdata; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__* regs; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 omap_rng_read(struct omap_rng_dev *priv, u16 reg)
{
 return __raw_readl(priv->base + priv->pdata->regs[reg]);
}

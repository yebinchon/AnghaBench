
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct omap_rng_dev {TYPE_1__* pdata; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__* regs; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void omap_rng_write(struct omap_rng_dev *priv, u16 reg,
          u32 val)
{
 __raw_writel(val, priv->base + priv->pdata->regs[reg]);
}

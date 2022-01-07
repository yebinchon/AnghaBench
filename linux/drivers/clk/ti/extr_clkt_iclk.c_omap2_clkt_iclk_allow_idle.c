
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_omap_reg {int offset; } ;
struct clk_hw_omap {int enable_bit; int enable_reg; } ;
typedef int r ;
struct TYPE_2__ {int (* clk_readl ) (struct clk_omap_reg*) ;int (* clk_writel ) (int,struct clk_omap_reg*) ;} ;


 int CM_AUTOIDLE ;
 int CM_ICLKEN ;
 int memcpy (struct clk_omap_reg*,int *,int) ;
 int stub1 (struct clk_omap_reg*) ;
 int stub2 (int,struct clk_omap_reg*) ;
 TYPE_1__* ti_clk_ll_ops ;

void omap2_clkt_iclk_allow_idle(struct clk_hw_omap *clk)
{
 u32 v;
 struct clk_omap_reg r;

 memcpy(&r, &clk->enable_reg, sizeof(r));
 r.offset ^= (CM_AUTOIDLE ^ CM_ICLKEN);

 v = ti_clk_ll_ops->clk_readl(&r);
 v |= (1 << clk->enable_bit);
 ti_clk_ll_ops->clk_writel(v, &r);
}

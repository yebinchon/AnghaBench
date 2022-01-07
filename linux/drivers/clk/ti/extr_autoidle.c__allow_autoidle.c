
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_ti_autoidle {int flags; int shift; int reg; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int AUTOIDLE_LOW ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;

__attribute__((used)) static void _allow_autoidle(struct clk_ti_autoidle *clk)
{
 u32 val;

 val = ti_clk_ll_ops->clk_readl(&clk->reg);

 if (clk->flags & AUTOIDLE_LOW)
  val &= ~(1 << clk->shift);
 else
  val |= (1 << clk->shift);

 ti_clk_ll_ops->clk_writel(val, &clk->reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct clk_omap_reg {int dummy; } ;
struct clk_hw_omap {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (struct clk_omap_reg*) ;} ;


 int MAX_MODULE_ENABLE_WAIT ;
 int pr_debug (char*,char const*,int) ;
 int pr_err (char*,char const*,int) ;
 int stub1 (struct clk_omap_reg*) ;
 TYPE_1__* ti_clk_ll_ops ;
 int udelay (int) ;

__attribute__((used)) static int _wait_idlest_generic(struct clk_hw_omap *clk,
    struct clk_omap_reg *reg,
    u32 mask, u8 idlest, const char *name)
{
 int i = 0, ena = 0;

 ena = (idlest) ? 0 : mask;


 for (i = 0; i < MAX_MODULE_ENABLE_WAIT; i++) {
  if ((ti_clk_ll_ops->clk_readl(reg) & mask) == ena)
   break;
  udelay(1);
 }

 if (i < MAX_MODULE_ENABLE_WAIT)
  pr_debug("omap clock: module associated with clock %s ready after %d loops\n",
    name, i);
 else
  pr_err("omap clock: module associated with clock %s didn't enable in %d tries\n",
         name, MAX_MODULE_ENABLE_WAIT);

 return (i < MAX_MODULE_ENABLE_WAIT) ? 1 : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int MOD_CONF_CTRL_1 ;
 int omap_readl (int ) ;

unsigned long omap1_sossi_recalc(struct clk *clk)
{
 u32 div = omap_readl(MOD_CONF_CTRL_1);

 div = (div >> 17) & 0x7;
 div++;

 return clk->parent->rate / div;
}

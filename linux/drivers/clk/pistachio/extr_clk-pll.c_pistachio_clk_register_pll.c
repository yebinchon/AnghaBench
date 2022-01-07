
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_pll {size_t id; int nr_rates; int rates; int type; scalar_t__ reg_base; int parent; int name; } ;
struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; scalar_t__ base; } ;
struct clk {int dummy; } ;


 struct clk* pll_register (int ,int ,int ,scalar_t__,int ,int ,int ) ;

void pistachio_clk_register_pll(struct pistachio_clk_provider *p,
    struct pistachio_pll *pll,
    unsigned int num)
{
 struct clk *clk;
 unsigned int i;

 for (i = 0; i < num; i++) {
  clk = pll_register(pll[i].name, pll[i].parent,
       0, p->base + pll[i].reg_base,
       pll[i].type, pll[i].rates,
       pll[i].nr_rates);
  p->clk_data.clks[pll[i].id] = clk;
 }
}

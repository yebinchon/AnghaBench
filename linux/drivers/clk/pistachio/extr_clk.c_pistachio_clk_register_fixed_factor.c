
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_fixed_factor {size_t id; int div; int parent; int name; } ;
struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; } ;
struct clk {int dummy; } ;


 struct clk* clk_register_fixed_factor (int *,int ,int ,int ,int,int ) ;

void pistachio_clk_register_fixed_factor(struct pistachio_clk_provider *p,
      struct pistachio_fixed_factor *ff,
      unsigned int num)
{
 struct clk *clk;
 unsigned int i;

 for (i = 0; i < num; i++) {
  clk = clk_register_fixed_factor(((void*)0), ff[i].name, ff[i].parent,
      0, 1, ff[i].div);
  p->clk_data.clks[ff[i].id] = clk;
 }
}

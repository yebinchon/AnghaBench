
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_div {size_t id; int div_flags; int width; scalar_t__ reg; int parent; int name; } ;
struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; scalar_t__ base; } ;
struct clk {int dummy; } ;


 struct clk* clk_register_divider (int *,int ,int ,int ,scalar_t__,int ,int ,int ,int *) ;

void pistachio_clk_register_div(struct pistachio_clk_provider *p,
    struct pistachio_div *div,
    unsigned int num)
{
 struct clk *clk;
 unsigned int i;

 for (i = 0; i < num; i++) {
  clk = clk_register_divider(((void*)0), div[i].name, div[i].parent,
        0, p->base + div[i].reg, 0,
        div[i].width, div[i].div_flags,
        ((void*)0));
  p->clk_data.clks[div[i].id] = clk;
 }
}

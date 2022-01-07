
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_gate {size_t id; int shift; scalar_t__ reg; int parent; int name; } ;
struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; scalar_t__ base; } ;
struct clk {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 struct clk* clk_register_gate (int *,int ,int ,int ,scalar_t__,int ,int ,int *) ;

void pistachio_clk_register_gate(struct pistachio_clk_provider *p,
     struct pistachio_gate *gate,
     unsigned int num)
{
 struct clk *clk;
 unsigned int i;

 for (i = 0; i < num; i++) {
  clk = clk_register_gate(((void*)0), gate[i].name, gate[i].parent,
     CLK_SET_RATE_PARENT,
     p->base + gate[i].reg, gate[i].shift,
     0, ((void*)0));
  p->clk_data.clks[gate[i].id] = clk;
 }
}

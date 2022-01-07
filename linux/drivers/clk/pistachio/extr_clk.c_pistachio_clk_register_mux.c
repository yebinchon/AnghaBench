
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_mux {size_t id; int num_parents; int shift; scalar_t__ reg; int parents; int name; } ;
struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; scalar_t__ base; } ;
struct clk {int dummy; } ;


 int CLK_SET_RATE_NO_REPARENT ;
 struct clk* clk_register_mux (int *,int ,int ,int ,int ,scalar_t__,int ,int ,int ,int *) ;
 int get_count_order (int ) ;

void pistachio_clk_register_mux(struct pistachio_clk_provider *p,
    struct pistachio_mux *mux,
    unsigned int num)
{
 struct clk *clk;
 unsigned int i;

 for (i = 0; i < num; i++) {
  clk = clk_register_mux(((void*)0), mux[i].name, mux[i].parents,
           mux[i].num_parents,
           CLK_SET_RATE_NO_REPARENT,
           p->base + mux[i].reg, mux[i].shift,
           get_count_order(mux[i].num_parents),
           0, ((void*)0));
  p->clk_data.clks[mux[i].id] = clk;
 }
}

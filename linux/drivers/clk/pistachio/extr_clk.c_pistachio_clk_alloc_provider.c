
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int clk_num; struct pistachio_clk_provider* clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; int base; struct device_node* node; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int GFP_KERNEL ;
 struct pistachio_clk_provider* kcalloc (unsigned int,int,int ) ;
 int kfree (struct pistachio_clk_provider*) ;
 struct pistachio_clk_provider* kzalloc (int,int ) ;
 int of_iomap (struct device_node*,int ) ;
 int pr_err (char*) ;

struct pistachio_clk_provider *
pistachio_clk_alloc_provider(struct device_node *node, unsigned int num_clks)
{
 struct pistachio_clk_provider *p;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return p;

 p->clk_data.clks = kcalloc(num_clks, sizeof(struct clk *), GFP_KERNEL);
 if (!p->clk_data.clks)
  goto free_provider;
 p->clk_data.clk_num = num_clks;
 p->node = node;
 p->base = of_iomap(node, 0);
 if (!p->base) {
  pr_err("Failed to map clock provider registers\n");
  goto free_clks;
 }

 return p;

free_clks:
 kfree(p->clk_data.clks);
free_provider:
 kfree(p);
 return ((void*)0);
}

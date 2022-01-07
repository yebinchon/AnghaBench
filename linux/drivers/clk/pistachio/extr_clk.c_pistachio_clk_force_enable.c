
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int __clk_get_name (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int pr_err (char*,int ,int) ;

void pistachio_clk_force_enable(struct pistachio_clk_provider *p,
    unsigned int *clk_ids, unsigned int num)
{
 unsigned int i;
 int err;

 for (i = 0; i < num; i++) {
  struct clk *clk = p->clk_data.clks[clk_ids[i]];

  if (IS_ERR(clk))
   continue;

  err = clk_prepare_enable(clk);
  if (err)
   pr_err("Failed to enable clock %s: %d\n",
          __clk_get_name(clk), err);
 }
}

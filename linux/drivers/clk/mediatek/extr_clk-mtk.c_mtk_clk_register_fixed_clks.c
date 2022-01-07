
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_fixed_clk {size_t id; int name; int rate; int parent; } ;
struct clk_onecell_data {struct clk** clks; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int IS_ERR_OR_NULL (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_register_fixed_rate (int *,int ,int ,int ,int ) ;
 int pr_err (char*,int ,int ) ;

void mtk_clk_register_fixed_clks(const struct mtk_fixed_clk *clks,
  int num, struct clk_onecell_data *clk_data)
{
 int i;
 struct clk *clk;

 for (i = 0; i < num; i++) {
  const struct mtk_fixed_clk *rc = &clks[i];

  if (clk_data && !IS_ERR_OR_NULL(clk_data->clks[rc->id]))
   continue;

  clk = clk_register_fixed_rate(((void*)0), rc->name, rc->parent, 0,
           rc->rate);

  if (IS_ERR(clk)) {
   pr_err("Failed to register clk %s: %ld\n",
     rc->name, PTR_ERR(clk));
   continue;
  }

  if (clk_data)
   clk_data->clks[rc->id] = clk;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_fixed_factor {size_t id; int name; int div; int mult; int parent_name; } ;
struct clk_onecell_data {struct clk** clks; } ;
struct clk {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 scalar_t__ IS_ERR (struct clk*) ;
 int IS_ERR_OR_NULL (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_register_fixed_factor (int *,int ,int ,int ,int ,int ) ;
 int pr_err (char*,int ,int ) ;

void mtk_clk_register_factors(const struct mtk_fixed_factor *clks,
  int num, struct clk_onecell_data *clk_data)
{
 int i;
 struct clk *clk;

 for (i = 0; i < num; i++) {
  const struct mtk_fixed_factor *ff = &clks[i];

  if (clk_data && !IS_ERR_OR_NULL(clk_data->clks[ff->id]))
   continue;

  clk = clk_register_fixed_factor(((void*)0), ff->name, ff->parent_name,
    CLK_SET_RATE_PARENT, ff->mult, ff->div);

  if (IS_ERR(clk)) {
   pr_err("Failed to register clk %s: %ld\n",
     ff->name, PTR_ERR(clk));
   continue;
  }

  if (clk_data)
   clk_data->clks[ff->id] = clk;
 }
}

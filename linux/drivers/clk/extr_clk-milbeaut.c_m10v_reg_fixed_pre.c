
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m10v_clk_div_fixed_data {char const* parent_name; size_t onecell_idx; int div; int mult; int name; } ;
struct clk_hw_onecell_data {struct clk_hw** hws; } ;
struct clk_hw {int dummy; } ;


 struct clk_hw* clk_hw_register_fixed_factor (int *,int ,char const*,int ,int ,int ) ;

__attribute__((used)) static void m10v_reg_fixed_pre(const struct m10v_clk_div_fixed_data *factors,
          struct clk_hw_onecell_data *clk_data,
          const char *parent_name)
{
 struct clk_hw *hw;
 const char *pn = factors->parent_name ?
    factors->parent_name : parent_name;

 hw = clk_hw_register_fixed_factor(((void*)0), factors->name, pn, 0,
       factors->mult, factors->div);

 if (factors->onecell_idx >= 0)
  clk_data->hws[factors->onecell_idx] = hw;
}

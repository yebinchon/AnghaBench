
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {unsigned int* args; } ;
struct clk_hw_onecell_data {struct clk_hw** hws; } ;
struct clk_hw {int dummy; } ;


 unsigned int CP110_CLK_TYPE_CORE ;
 unsigned int CP110_CLK_TYPE_GATABLE ;
 unsigned int CP110_MAX_CORE_CLOCKS ;
 unsigned int CP110_MAX_GATABLE_CLOCKS ;
 int EINVAL ;
 struct clk_hw* ERR_PTR (int ) ;

__attribute__((used)) static struct clk_hw *cp110_of_clk_get(struct of_phandle_args *clkspec,
           void *data)
{
 struct clk_hw_onecell_data *clk_data = data;
 unsigned int type = clkspec->args[0];
 unsigned int idx = clkspec->args[1];

 if (type == CP110_CLK_TYPE_CORE) {
  if (idx >= CP110_MAX_CORE_CLOCKS)
   return ERR_PTR(-EINVAL);
  return clk_data->hws[idx];
 } else if (type == CP110_CLK_TYPE_GATABLE) {
  if (idx >= CP110_MAX_GATABLE_CLOCKS)
   return ERR_PTR(-EINVAL);
  return clk_data->hws[CP110_MAX_CORE_CLOCKS + idx];
 }

 return ERR_PTR(-EINVAL);
}

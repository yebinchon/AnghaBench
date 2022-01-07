
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {scalar_t__* args; struct device_node* np; } ;
struct device_node {int dummy; } ;


 scalar_t__ IMX6QDL_CLK_PLL6 ;
 scalar_t__ IMX6QDL_PLL6_BYPASS ;
 int of_count_phandle_with_args (struct device_node*,char*,char*) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;

__attribute__((used)) static bool pll6_bypassed(struct device_node *node)
{
 int index, ret, num_clocks;
 struct of_phandle_args clkspec;

 num_clocks = of_count_phandle_with_args(node, "assigned-clocks",
      "#clock-cells");
 if (num_clocks < 0)
  return 0;

 for (index = 0; index < num_clocks; index++) {
  ret = of_parse_phandle_with_args(node, "assigned-clocks",
       "#clock-cells", index,
       &clkspec);
  if (ret < 0)
   return 0;

  if (clkspec.np == node &&
      clkspec.args[0] == IMX6QDL_PLL6_BYPASS)
   break;
 }


 if (index == num_clocks)
  return 0;

 ret = of_parse_phandle_with_args(node, "assigned-clock-parents",
      "#clock-cells", index, &clkspec);

 if (clkspec.args[0] != IMX6QDL_CLK_PLL6)
  return 1;

 return 0;
}

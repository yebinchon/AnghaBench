
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_syscon {int clk_val; } ;
struct clk_hw {int dummy; } ;
 int syscon_get_perf () ;
 struct clk_syscon* to_syscon (struct clk_hw*) ;

__attribute__((used)) static unsigned long
syscon_clk_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct clk_syscon *sclk = to_syscon(hw);
 u16 perf = syscon_get_perf();

 switch (sclk->clk_val) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 129:

  switch (perf) {
  case 139:
  case 140:
   return 13000000;
  default:
   return parent_rate;
  }
 case 137:
 case 131:
 case 128:

  switch (perf) {
  case 139:
  case 140:
   return 6500000;
  case 141:
   return 26000000;
  default:
   return parent_rate;
  }
 case 130:
 case 136:

  switch (perf) {
  case 139:
  case 140:
   return 13000000;
  case 141:
   return 52000000;
  default:
   return 104000000;
  }
 case 138:

  switch (perf) {
  case 139:
  case 140:
   return 13000000;
  case 141:
   return 52000000;
  case 142:
   return 104000000;
  default:
   return parent_rate;
  }
 default:




  return parent_rate;
 }
}

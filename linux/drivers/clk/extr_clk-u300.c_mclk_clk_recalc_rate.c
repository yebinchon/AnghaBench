
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_hw {int dummy; } ;







 scalar_t__ U300_SYSCON_MMF0R ;
 int U300_SYSCON_MMF0R_MASK ;
 int readw (scalar_t__) ;
 int syscon_get_perf () ;
 scalar_t__ syscon_vbase ;

__attribute__((used)) static unsigned long
mclk_clk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 u16 perf = syscon_get_perf();

 switch (perf) {
 case 128:





  return 13000000;
 case 129:
 case 130:
 case 131:
 case 132:
 {
  u16 val = readw(syscon_vbase + U300_SYSCON_MMF0R) &
   U300_SYSCON_MMF0R_MASK;
  switch (val) {
  case 0x0054:
   return 18900000;
  case 0x0044:
   return 20800000;
  case 0x0043:
   return 23100000;
  case 0x0033:
   return 26000000;
  case 0x0032:
   return 29700000;
  case 0x0022:
   return 34700000;
  case 0x0021:
   return 41600000;
  case 0x0011:
   return 52000000;
  case 0x0000:
   return 104000000;
  default:
   break;
  }
 }
 default:
  break;
 }
 return parent_rate;
}

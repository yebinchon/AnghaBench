
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {unsigned long long sysbase; } ;


 int SYS_9XX_CPU_PLL_CTRL0 (int) ;
 int SYS_9XX_CPU_PLL_CTRL1 (int) ;
 int SYS_CPU_PLL_CTRL0 (int) ;
 int SYS_CPU_PLL_CTRL1 (int) ;
 scalar_t__ cpu_is_xlp9xx () ;
 int do_div (unsigned long long,unsigned int) ;
 unsigned long long nlm_get_clock_regbase (int) ;
 TYPE_1__* nlm_get_node (int) ;
 unsigned int nlm_read_sys_reg (unsigned long long,int ) ;

__attribute__((used)) static unsigned int nlm_xlp2_get_core_frequency(int node, int core)
{
 unsigned int pll_post_div, ctrl_val0, ctrl_val1, denom;
 uint64_t num, sysbase, clockbase;

 if (cpu_is_xlp9xx()) {
  clockbase = nlm_get_clock_regbase(node);
  ctrl_val0 = nlm_read_sys_reg(clockbase,
     SYS_9XX_CPU_PLL_CTRL0(core));
  ctrl_val1 = nlm_read_sys_reg(clockbase,
     SYS_9XX_CPU_PLL_CTRL1(core));
 } else {
  sysbase = nlm_get_node(node)->sysbase;
  ctrl_val0 = nlm_read_sys_reg(sysbase,
      SYS_CPU_PLL_CTRL0(core));
  ctrl_val1 = nlm_read_sys_reg(sysbase,
      SYS_CPU_PLL_CTRL1(core));
 }


 switch ((ctrl_val0 >> 24) & 0x7) {
 case 1:
  pll_post_div = 2;
  break;
 case 3:
  pll_post_div = 4;
  break;
 case 7:
  pll_post_div = 8;
  break;
 case 6:
  pll_post_div = 16;
  break;
 case 0:
 default:
  pll_post_div = 1;
  break;
 }

 num = 1000000ULL * (400 * 3 + 100 * (ctrl_val1 & 0x3f));
 denom = 3 * pll_post_div;
 do_div(num, denom);

 return (unsigned int)num;
}

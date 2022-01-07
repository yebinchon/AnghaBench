
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 scalar_t__ ALCHEMY_CPU_AU1300 ;
 int AU1000_SYS_CPUPLL ;
 scalar_t__ alchemy_get_cputype () ;
 int alchemy_rdsys (int ) ;
 int au1xxx_cpu_has_pll_wo () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned long alchemy_clk_cpu_recalc(struct clk_hw *hw,
         unsigned long parent_rate)
{
 unsigned long t;






 if (unlikely(au1xxx_cpu_has_pll_wo()))
  t = 396000000;
 else {
  t = alchemy_rdsys(AU1000_SYS_CPUPLL) & 0x7f;
  if (alchemy_get_cputype() < ALCHEMY_CPU_AU1300)
   t &= 0x3f;
  t *= parent_rate;
 }

 return t;
}

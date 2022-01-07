
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CCCR ;
 int CCCR_A_BIT ;
 int CCCR_CPDIS_BIT ;
 int CCSR ;
 unsigned long CCSR_L_MASK ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long clk_pxa27x_memory_get_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 unsigned int a, l, osc_forced;
 unsigned long cccr = readl(CCCR);
 unsigned long ccsr = readl(CCSR);

 osc_forced = ccsr & (1 << CCCR_CPDIS_BIT);
 a = cccr & (1 << CCCR_A_BIT);
 l = ccsr & CCSR_L_MASK;

 if (osc_forced || a)
  return parent_rate;
 if (l <= 10)
  return parent_rate;
 if (l <= 20)
  return parent_rate / 2;
 return parent_rate / 4;
}

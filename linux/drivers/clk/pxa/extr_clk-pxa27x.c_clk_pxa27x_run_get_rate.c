
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CCSR ;
 unsigned long CCSR_N2_MASK ;
 unsigned long CCSR_N2_SHIFT ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long clk_pxa27x_run_get_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 unsigned long ccsr = readl(CCSR);
 unsigned int n2 = (ccsr & CCSR_N2_MASK) >> CCSR_N2_SHIFT;

 return (parent_rate / n2) * 2;
}

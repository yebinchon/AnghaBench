
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CCCR ;
 unsigned int* M_clk_mult ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long clk_pxa25x_memory_get_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 unsigned long cccr = readl(CCCR);
 unsigned int m = M_clk_mult[(cccr >> 5) & 0x03];

 return parent_rate / m;
}

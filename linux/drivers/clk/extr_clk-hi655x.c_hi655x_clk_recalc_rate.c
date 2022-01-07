
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static unsigned long hi655x_clk_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 return 32768;
}

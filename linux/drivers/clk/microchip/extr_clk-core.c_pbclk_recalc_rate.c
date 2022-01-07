
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_periph_clk {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct pic32_periph_clk* clkhw_to_pbclk (struct clk_hw*) ;
 unsigned long pbclk_read_pbdiv (struct pic32_periph_clk*) ;

__attribute__((used)) static unsigned long pbclk_recalc_rate(struct clk_hw *hw,
           unsigned long parent_rate)
{
 struct pic32_periph_clk *pb = clkhw_to_pbclk(hw);

 return parent_rate / pbclk_read_pbdiv(pb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si514 {int dummy; } ;
struct clk_hw {int dummy; } ;


 int si514_enable_output (struct clk_si514*,int) ;
 struct clk_si514* to_clk_si514 (struct clk_hw*) ;

__attribute__((used)) static int si514_prepare(struct clk_hw *hw)
{
 struct clk_si514 *data = to_clk_si514(hw);

 return si514_enable_output(data, 1);
}

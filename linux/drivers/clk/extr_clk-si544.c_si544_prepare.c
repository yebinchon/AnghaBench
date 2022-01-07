
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544 {int dummy; } ;
struct clk_hw {int dummy; } ;


 int si544_enable_output (struct clk_si544*,int) ;
 struct clk_si544* to_clk_si544 (struct clk_hw*) ;

__attribute__((used)) static int si544_prepare(struct clk_hw *hw)
{
 struct clk_si544 *data = to_clk_si544(hw);

 return si544_enable_output(data, 1);
}

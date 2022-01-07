
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pxa_clk {scalar_t__ (* is_in_low_power ) () ;} ;
struct clk_hw {int dummy; } ;


 scalar_t__ stub1 () ;
 struct pxa_clk* to_pxa_clk (struct clk_hw*) ;

__attribute__((used)) static u8 cken_get_parent(struct clk_hw *hw)
{
 struct pxa_clk *pclk = to_pxa_clk(hw);

 if (!pclk->is_in_low_power)
  return 0;
 return pclk->is_in_low_power() ? 0 : 1;
}

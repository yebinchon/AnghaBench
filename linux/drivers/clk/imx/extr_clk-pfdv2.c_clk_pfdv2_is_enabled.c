
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pfdv2 {int gate_bit; int reg; } ;
struct clk_hw {int dummy; } ;


 int readl_relaxed (int ) ;
 struct clk_pfdv2* to_clk_pfdv2 (struct clk_hw*) ;

__attribute__((used)) static int clk_pfdv2_is_enabled(struct clk_hw *hw)
{
 struct clk_pfdv2 *pfd = to_clk_pfdv2(hw);

 if (readl_relaxed(pfd->reg) & (1 << pfd->gate_bit))
  return 0;

 return 1;
}

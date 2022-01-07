
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pfd {int idx; int reg; } ;
struct clk_hw {int dummy; } ;


 int readl_relaxed (int ) ;
 struct clk_pfd* to_clk_pfd (struct clk_hw*) ;

__attribute__((used)) static int clk_pfd_is_enabled(struct clk_hw *hw)
{
 struct clk_pfd *pfd = to_clk_pfd(hw);

 if (readl_relaxed(pfd->reg) & (1 << ((pfd->idx + 1) * 8 - 1)))
  return 0;

 return 1;
}

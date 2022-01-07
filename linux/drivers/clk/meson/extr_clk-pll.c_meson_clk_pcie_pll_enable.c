
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int EIO ;
 int meson_clk_pll_init (struct clk_hw*) ;
 scalar_t__ meson_clk_pll_wait_lock (struct clk_hw*) ;

__attribute__((used)) static int meson_clk_pcie_pll_enable(struct clk_hw *hw)
{
 meson_clk_pll_init(hw);

 if (meson_clk_pll_wait_lock(hw))
  return -EIO;

 return 0;
}

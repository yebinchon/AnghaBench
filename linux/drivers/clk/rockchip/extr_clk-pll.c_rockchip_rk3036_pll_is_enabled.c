
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_clk_pll {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ RK3036_PLLCON (int) ;
 int RK3036_PLLCON1_PWRDOWN ;
 int readl (scalar_t__) ;
 struct rockchip_clk_pll* to_rockchip_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int rockchip_rk3036_pll_is_enabled(struct clk_hw *hw)
{
 struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 u32 pllcon = readl(pll->reg_base + RK3036_PLLCON(1));

 return !(pllcon & RK3036_PLLCON1_PWRDOWN);
}

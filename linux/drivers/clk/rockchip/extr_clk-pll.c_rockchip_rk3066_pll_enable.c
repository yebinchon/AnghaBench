
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_clk_pll {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 int HIWORD_UPDATE (int ,int ,int ) ;
 scalar_t__ RK3066_PLLCON (int) ;
 int RK3066_PLLCON3_PWRDOWN ;
 int rockchip_pll_wait_lock (struct rockchip_clk_pll*) ;
 struct rockchip_clk_pll* to_rockchip_clk_pll (struct clk_hw*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int rockchip_rk3066_pll_enable(struct clk_hw *hw)
{
 struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);

 writel(HIWORD_UPDATE(0, RK3066_PLLCON3_PWRDOWN, 0),
        pll->reg_base + RK3066_PLLCON(3));
 rockchip_pll_wait_lock(pll);

 return 0;
}

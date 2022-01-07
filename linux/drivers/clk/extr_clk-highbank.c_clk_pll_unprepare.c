
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hb_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int HB_PLL_RESET ;
 int readl (int ) ;
 struct hb_clk* to_hb_clk (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void clk_pll_unprepare(struct clk_hw *hwclk)
{
 struct hb_clk *hbclk = to_hb_clk(hwclk);
 u32 reg;

 reg = readl(hbclk->reg);
 reg |= HB_PLL_RESET;
 writel(reg, hbclk->reg);
}

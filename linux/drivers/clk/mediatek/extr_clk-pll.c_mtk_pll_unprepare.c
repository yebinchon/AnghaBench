
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_clk_pll {scalar_t__ pwr_addr; scalar_t__ base_addr; TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; int rst_bar_mask; } ;


 int CON0_BASE_EN ;
 int CON0_ISO_EN ;
 int CON0_PWR_ON ;
 int HAVE_RST_BAR ;
 scalar_t__ REG_CON0 ;
 int __mtk_pll_tuner_disable (struct mtk_clk_pll*) ;
 int readl (scalar_t__) ;
 struct mtk_clk_pll* to_mtk_clk_pll (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_pll_unprepare(struct clk_hw *hw)
{
 struct mtk_clk_pll *pll = to_mtk_clk_pll(hw);
 u32 r;

 if (pll->data->flags & HAVE_RST_BAR) {
  r = readl(pll->base_addr + REG_CON0);
  r &= ~pll->data->rst_bar_mask;
  writel(r, pll->base_addr + REG_CON0);
 }

 __mtk_pll_tuner_disable(pll);

 r = readl(pll->base_addr + REG_CON0);
 r &= ~CON0_BASE_EN;
 writel(r, pll->base_addr + REG_CON0);

 r = readl(pll->pwr_addr) | CON0_ISO_EN;
 writel(r, pll->pwr_addr);

 r = readl(pll->pwr_addr) & ~CON0_PWR_ON;
 writel(r, pll->pwr_addr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct iproc_pll {scalar_t__ control_base; } ;
struct TYPE_2__ {unsigned int shift; int width; scalar_t__ offset; } ;
struct iproc_clk_ctrl {int flags; TYPE_1__ mdiv; } ;
struct iproc_clk {struct iproc_pll* pll; struct iproc_clk_ctrl* ctrl; } ;
struct clk_hw {int dummy; } ;


 int IPROC_CLK_MCLK_DIV_BY_2 ;
 unsigned int bit_mask (int ) ;
 unsigned int readl (scalar_t__) ;
 struct iproc_clk* to_iproc_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long iproc_clk_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct iproc_clk *clk = to_iproc_clk(hw);
 const struct iproc_clk_ctrl *ctrl = clk->ctrl;
 struct iproc_pll *pll = clk->pll;
 u32 val;
 unsigned int mdiv;
 unsigned long rate;

 if (parent_rate == 0)
  return 0;

 val = readl(pll->control_base + ctrl->mdiv.offset);
 mdiv = (val >> ctrl->mdiv.shift) & bit_mask(ctrl->mdiv.width);
 if (mdiv == 0)
  mdiv = 256;

 if (ctrl->flags & IPROC_CLK_MCLK_DIV_BY_2)
  rate = parent_rate / (mdiv * 2);
 else
  rate = parent_rate / mdiv;

 return rate;
}

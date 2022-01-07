
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iproc_pll {scalar_t__ control_base; } ;
struct TYPE_2__ {int enable_shift; int hold_shift; scalar_t__ offset; } ;
struct iproc_clk_ctrl {TYPE_1__ enable; } ;
struct iproc_clk {struct iproc_pll* pll; struct iproc_clk_ctrl* ctrl; } ;
struct clk_hw {int dummy; } ;


 int iproc_pll_write (struct iproc_pll*,scalar_t__,scalar_t__,int) ;
 int readl (scalar_t__) ;
 struct iproc_clk* to_iproc_clk (struct clk_hw*) ;

__attribute__((used)) static int iproc_clk_enable(struct clk_hw *hw)
{
 struct iproc_clk *clk = to_iproc_clk(hw);
 const struct iproc_clk_ctrl *ctrl = clk->ctrl;
 struct iproc_pll *pll = clk->pll;
 u32 val;


 val = readl(pll->control_base + ctrl->enable.offset);
 val &= ~(1 << ctrl->enable.enable_shift);
 iproc_pll_write(pll, pll->control_base, ctrl->enable.offset, val);


 val = readl(pll->control_base + ctrl->enable.offset);
 val &= ~(1 << ctrl->enable.hold_shift);
 iproc_pll_write(pll, pll->control_base, ctrl->enable.offset, val);

 return 0;
}

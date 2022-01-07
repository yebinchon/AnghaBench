
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int en_shift; scalar_t__ offset; } ;
struct TYPE_3__ {int pwr_shift; int iso_shift; scalar_t__ offset; int pwr_width; } ;
struct iproc_pll_ctrl {int flags; TYPE_2__ asiu; TYPE_1__ aon; } ;
struct iproc_pll {scalar_t__ asiu_base; scalar_t__ pwr_base; scalar_t__ control_base; struct iproc_pll_ctrl* ctrl; } ;


 int IPROC_CLK_EMBED_PWRCTRL ;
 int IPROC_CLK_PLL_ASIU ;
 int bit_mask (int ) ;
 int iproc_pll_write (struct iproc_pll*,scalar_t__,scalar_t__,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int __pll_enable(struct iproc_pll *pll)
{
 const struct iproc_pll_ctrl *ctrl = pll->ctrl;
 u32 val;

 if (ctrl->flags & IPROC_CLK_EMBED_PWRCTRL) {
  val = readl(pll->control_base + ctrl->aon.offset);
  val &= ~(bit_mask(ctrl->aon.pwr_width) << ctrl->aon.pwr_shift);
  iproc_pll_write(pll, pll->control_base, ctrl->aon.offset, val);
 }

 if (pll->pwr_base) {

  val = readl(pll->pwr_base + ctrl->aon.offset);
  val |= bit_mask(ctrl->aon.pwr_width) << ctrl->aon.pwr_shift;
  val &= ~(1 << ctrl->aon.iso_shift);
  iproc_pll_write(pll, pll->pwr_base, ctrl->aon.offset, val);
 }


 if (ctrl->flags & IPROC_CLK_PLL_ASIU) {
  val = readl(pll->asiu_base + ctrl->asiu.offset);
  val |= (1 << ctrl->asiu.en_shift);
  iproc_pll_write(pll, pll->asiu_base, ctrl->asiu.offset, val);
 }

 return 0;
}

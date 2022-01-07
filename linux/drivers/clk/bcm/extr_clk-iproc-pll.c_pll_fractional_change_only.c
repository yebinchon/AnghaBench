
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iproc_pll_vco_param {int ndiv_int; unsigned int pdiv; } ;
struct TYPE_6__ {int shift; int width; scalar_t__ offset; } ;
struct TYPE_5__ {int shift; int width; scalar_t__ offset; } ;
struct TYPE_4__ {int shift; scalar_t__ offset; } ;
struct iproc_pll_ctrl {TYPE_3__ pdiv; TYPE_2__ ndiv_int; TYPE_1__ status; } ;
struct iproc_pll {scalar_t__ control_base; scalar_t__ status_base; struct iproc_pll_ctrl* ctrl; } ;


 int bit_mask (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool pll_fractional_change_only(struct iproc_pll *pll,
           struct iproc_pll_vco_param *vco)
{
 const struct iproc_pll_ctrl *ctrl = pll->ctrl;
 u32 val;
 u32 ndiv_int;
 unsigned int pdiv;


 val = readl(pll->status_base + ctrl->status.offset);
 if ((val & (1 << ctrl->status.shift)) == 0)
  return 0;

 val = readl(pll->control_base + ctrl->ndiv_int.offset);
 ndiv_int = (val >> ctrl->ndiv_int.shift) &
  bit_mask(ctrl->ndiv_int.width);

 if (ndiv_int != vco->ndiv_int)
  return 0;

 val = readl(pll->control_base + ctrl->pdiv.offset);
 pdiv = (val >> ctrl->pdiv.shift) & bit_mask(ctrl->pdiv.width);

 if (pdiv != vco->pdiv)
  return 0;

 return 1;
}

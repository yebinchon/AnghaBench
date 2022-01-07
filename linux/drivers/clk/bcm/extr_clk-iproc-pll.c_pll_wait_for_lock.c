
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int shift; scalar_t__ offset; } ;
struct iproc_pll_ctrl {TYPE_1__ status; } ;
struct iproc_pll {scalar_t__ status_base; struct iproc_pll_ctrl* ctrl; } ;


 int EIO ;
 int LOCK_DELAY ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int pll_wait_for_lock(struct iproc_pll *pll)
{
 int i;
 const struct iproc_pll_ctrl *ctrl = pll->ctrl;

 for (i = 0; i < LOCK_DELAY; i++) {
  u32 val = readl(pll->status_base + ctrl->status.offset);

  if (val & (1 << ctrl->status.shift))
   return 0;
  udelay(10);
 }

 return -EIO;
}

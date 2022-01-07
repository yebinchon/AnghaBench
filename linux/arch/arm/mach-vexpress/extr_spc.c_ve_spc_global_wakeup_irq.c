
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ baseaddr; } ;


 int GBL_WAKEUP_INT_MSK ;
 scalar_t__ WAKE_INT_MASK ;
 TYPE_1__* info ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void ve_spc_global_wakeup_irq(bool set)
{
 u32 reg;

 reg = readl_relaxed(info->baseaddr + WAKE_INT_MASK);

 if (set)
  reg |= GBL_WAKEUP_INT_MSK;
 else
  reg &= ~GBL_WAKEUP_INT_MSK;

 writel_relaxed(reg, info->baseaddr + WAKE_INT_MASK);
}

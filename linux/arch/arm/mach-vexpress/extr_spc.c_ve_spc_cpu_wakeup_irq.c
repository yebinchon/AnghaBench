
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ baseaddr; } ;


 scalar_t__ BIT (scalar_t__) ;
 scalar_t__ MAX_CLUSTERS ;
 scalar_t__ WAKE_INT_MASK ;
 int cluster_is_a15 (scalar_t__) ;
 TYPE_1__* info ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

void ve_spc_cpu_wakeup_irq(u32 cluster, u32 cpu, bool set)
{
 u32 mask, reg;

 if (cluster >= MAX_CLUSTERS)
  return;

 mask = BIT(cpu);

 if (!cluster_is_a15(cluster))
  mask <<= 4;

 reg = readl_relaxed(info->baseaddr + WAKE_INT_MASK);

 if (set)
  reg |= mask;
 else
  reg &= ~mask;

 writel_relaxed(reg, info->baseaddr + WAKE_INT_MASK);
}

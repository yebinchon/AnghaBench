
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIC_DIST_CTRL ;
 scalar_t__ gic_dist_base_addr ;
 int readl_relaxed (scalar_t__) ;

bool gic_dist_disabled(void)
{
 return !(readl_relaxed(gic_dist_base_addr + GIC_DIST_CTRL) & 0x1);
}

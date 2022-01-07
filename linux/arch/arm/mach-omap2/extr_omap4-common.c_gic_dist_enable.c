
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIC_DIST_CTRL ;
 scalar_t__ gic_dist_base_addr ;
 int writel_relaxed (int,scalar_t__) ;

void gic_dist_enable(void)
{
 if (gic_dist_base_addr)
  writel_relaxed(0x1, gic_dist_base_addr + GIC_DIST_CTRL);
}

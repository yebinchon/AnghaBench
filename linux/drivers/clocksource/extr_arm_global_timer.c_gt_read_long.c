
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GT_COUNTER0 ;
 scalar_t__ gt_base ;
 unsigned long readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned long gt_read_long(void)
{
 return readl_relaxed(gt_base + GT_COUNTER0);
}

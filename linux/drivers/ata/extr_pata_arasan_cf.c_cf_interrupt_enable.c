
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arasan_cf_dev {scalar_t__ vbase; } ;


 scalar_t__ IRQ_EN ;
 scalar_t__ IRQ_STS ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void
cf_interrupt_enable(struct arasan_cf_dev *acdev, u32 mask, bool enable)
{
 u32 val = readl(acdev->vbase + IRQ_EN);

 if (enable) {
  writel(mask, acdev->vbase + IRQ_STS);
  writel(val | mask, acdev->vbase + IRQ_EN);
 } else
  writel(val & ~mask, acdev->vbase + IRQ_EN);
}

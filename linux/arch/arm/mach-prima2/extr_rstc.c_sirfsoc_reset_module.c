
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;


 int EINVAL ;
 int SIRFSOC_RSTBIT_NUM ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int rstc_lock ;
 scalar_t__ sirfsoc_rstc_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sirfsoc_reset_module(struct reset_controller_dev *rcdev,
     unsigned long sw_reset_idx)
{
 u32 reset_bit = sw_reset_idx;

 if (reset_bit >= SIRFSOC_RSTBIT_NUM)
  return -EINVAL;

 mutex_lock(&rstc_lock);
 writel(readl(sirfsoc_rstc_base +
   (reset_bit / 32) * 4) | (1 << reset_bit),
  sirfsoc_rstc_base + (reset_bit / 32) * 4);
 msleep(20);
 writel(readl(sirfsoc_rstc_base +
   (reset_bit / 32) * 4) & ~(1 << reset_bit),
  sirfsoc_rstc_base + (reset_bit / 32) * 4);

 mutex_unlock(&rstc_lock);

 return 0;
}

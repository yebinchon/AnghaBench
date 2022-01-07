
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ CBE_PM_16BIT_CTR (scalar_t__) ;
 scalar_t__ NR_PHYS_CTRS ;
 scalar_t__ cbe_read_pm (scalar_t__,int ) ;
 int pm_control ;

u32 cbe_get_ctr_size(u32 cpu, u32 phys_ctr)
{
 u32 pm_ctrl, size = 0;

 if (phys_ctr < NR_PHYS_CTRS) {
  pm_ctrl = cbe_read_pm(cpu, pm_control);
  size = (pm_ctrl & CBE_PM_16BIT_CTR(phys_ctr)) ? 16 : 32;
 }

 return size;
}

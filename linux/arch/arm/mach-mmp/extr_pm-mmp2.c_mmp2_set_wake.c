
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;






 int MPMU_WUCRM_PJ ;
 unsigned long MPMU_WUCRM_PJ_RTC_ALARM ;
 unsigned long MPMU_WUCRM_PJ_WAKEUP (int) ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

int mmp2_set_wake(struct irq_data *d, unsigned int on)
{
 unsigned long data = 0;
 int irq = d->irq;


 switch (irq) {
 case 129:
 case 128:
  data = MPMU_WUCRM_PJ_WAKEUP(4) | MPMU_WUCRM_PJ_RTC_ALARM;
  break;
 case 130:
  data = MPMU_WUCRM_PJ_WAKEUP(7);
  break;
 case 131:

  data = MPMU_WUCRM_PJ_WAKEUP(2);
  break;
 }
 if (on) {
  if (data) {
   data |= __raw_readl(MPMU_WUCRM_PJ);
   __raw_writel(data, MPMU_WUCRM_PJ);
  }
 } else {
  if (data) {
   data = ~data & __raw_readl(MPMU_WUCRM_PJ);
   __raw_writel(data, MPMU_WUCRM_PJ);
  }
 }
 return 0;
}

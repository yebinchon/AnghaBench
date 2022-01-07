
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int data; int (* cb ) (int ) ;} ;


 int BCM63XX_TIMER_COUNT ;
 int IRQ_HANDLED ;
 int TIMER_IRQSTAT_REG ;
 int TIMER_IRQSTAT_TIMER_CAUSE (int) ;
 int bcm_timer_readl (int ) ;
 int bcm_timer_writel (int,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (int ) ;
 TYPE_1__* timer_data ;
 int timer_data_lock ;
 int timer_reg_lock ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 u32 stat;
 int i;

 raw_spin_lock(&timer_reg_lock);
 stat = bcm_timer_readl(TIMER_IRQSTAT_REG);
 bcm_timer_writel(stat, TIMER_IRQSTAT_REG);
 raw_spin_unlock(&timer_reg_lock);

 for (i = 0; i < BCM63XX_TIMER_COUNT; i++) {
  if (!(stat & TIMER_IRQSTAT_TIMER_CAUSE(i)))
   continue;

  raw_spin_lock(&timer_data_lock);
  if (!timer_data[i].cb) {
   raw_spin_unlock(&timer_data_lock);
   continue;
  }

  timer_data[i].cb(timer_data[i].data);
  raw_spin_unlock(&timer_data_lock);
 }

 return IRQ_HANDLED;
}

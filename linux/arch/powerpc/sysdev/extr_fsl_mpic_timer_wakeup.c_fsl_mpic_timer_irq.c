
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mpic_timer_wakeup {scalar_t__ timer; int free_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t fsl_mpic_timer_irq(int irq, void *dev_id)
{
 struct fsl_mpic_timer_wakeup *wakeup = dev_id;

 schedule_work(&wakeup->free_work);

 return wakeup->timer ? IRQ_HANDLED : IRQ_NONE;
}

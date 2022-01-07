
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int disable_irq_nosync (int) ;

__attribute__((used)) static irqreturn_t db1300_mmc_cd(int irq, void *ptr)
{
 disable_irq_nosync(irq);
 return IRQ_WAKE_THREAD;
}

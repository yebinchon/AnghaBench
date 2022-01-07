
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int blkif_notify_work (void*) ;

irqreturn_t xen_blkif_be_int(int irq, void *dev_id)
{
 blkif_notify_work(dev_id);
 return IRQ_HANDLED;
}

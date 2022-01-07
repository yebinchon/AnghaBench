
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (unsigned int) ;
 int VPRINTK (char*) ;
 unsigned int adma_intr_mmio (struct ata_host*) ;
 unsigned int adma_intr_pkt (struct ata_host*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t adma_intr(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 unsigned int handled = 0;

 VPRINTK("ENTER\n");

 spin_lock(&host->lock);
 handled = adma_intr_pkt(host) | adma_intr_mmio(host);
 spin_unlock(&host->lock);

 VPRINTK("EXIT\n");

 return IRQ_RETVAL(handled);
}

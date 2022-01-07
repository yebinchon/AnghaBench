
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ata_host {unsigned int n_ports; int lock; int * ports; int dev; scalar_t__* iomap; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (unsigned int) ;
 size_t VSC_MMIO_BAR ;
 scalar_t__ VSC_SATA_INT_STAT_OFFSET ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vsc_port_intr (int,int ) ;

__attribute__((used)) static irqreturn_t vsc_sata_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 unsigned int i;
 unsigned int handled = 0;
 u32 status;

 status = readl(host->iomap[VSC_MMIO_BAR] + VSC_SATA_INT_STAT_OFFSET);

 if (unlikely(status == 0xffffffff || status == 0)) {
  if (status)
   dev_err(host->dev,
    ": IRQ status == 0xffffffff, PCI fault or device removal?\n");
  goto out;
 }

 spin_lock(&host->lock);

 for (i = 0; i < host->n_ports; i++) {
  u8 port_status = (status >> (8 * i)) & 0xff;
  if (port_status) {
   vsc_port_intr(port_status, host->ports[i]);
   handled++;
  }
 }

 spin_unlock(&host->lock);
out:
 return IRQ_RETVAL(handled);
}

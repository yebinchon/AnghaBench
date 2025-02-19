
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ sactive; } ;
struct ata_port {TYPE_1__ link; } ;
struct ata_host {unsigned int n_ports; int lock; struct ata_port** ports; scalar_t__* iomap; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (unsigned int) ;
 int NV_INT_PORT_SHIFT_MCP55 ;
 scalar_t__ NV_INT_STATUS_MCP55 ;
 size_t NV_MMIO_BAR ;
 scalar_t__ nv_host_intr (struct ata_port*,int ) ;
 int nv_swncq_host_interrupt (struct ata_port*,int ) ;
 int nv_swncq_irq_clear (struct ata_port*,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t nv_swncq_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 unsigned int i;
 unsigned int handled = 0;
 unsigned long flags;
 u32 irq_stat;

 spin_lock_irqsave(&host->lock, flags);

 irq_stat = readl(host->iomap[NV_MMIO_BAR] + NV_INT_STATUS_MCP55);

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  if (ap->link.sactive) {
   nv_swncq_host_interrupt(ap, (u16)irq_stat);
   handled = 1;
  } else {
   if (irq_stat)
    nv_swncq_irq_clear(ap, 0xfff0);

   handled += nv_host_intr(ap, (u8)irq_stat);
  }
  irq_stat >>= NV_INT_PORT_SHIFT_MCP55;
 }

 spin_unlock_irqrestore(&host->lock, flags);

 return IRQ_RETVAL(handled);
}

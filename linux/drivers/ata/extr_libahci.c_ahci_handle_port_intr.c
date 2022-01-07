
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {int dummy; } ;
struct ata_host {unsigned int n_ports; int dev; struct ata_port** ports; } ;


 int VPRINTK (char*,unsigned int) ;
 int ahci_port_intr (struct ata_port*) ;
 scalar_t__ ata_ratelimit () ;
 int dev_warn (int ,char*,unsigned int) ;

u32 ahci_handle_port_intr(struct ata_host *host, u32 irq_masked)
{
 unsigned int i, handled = 0;

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap;

  if (!(irq_masked & (1 << i)))
   continue;

  ap = host->ports[i];
  if (ap) {
   ahci_port_intr(ap);
   VPRINTK("port %u\n", i);
  } else {
   VPRINTK("port %u (no irq)\n", i);
   if (ata_ratelimit())
    dev_warn(host->dev,
      "interrupt on disabled port %u\n", i);
  }

  handled = 1;
 }

 return handled;
}

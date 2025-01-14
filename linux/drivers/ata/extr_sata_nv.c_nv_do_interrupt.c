
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_host {int n_ports; int * ports; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int NV_INT_PORT_SHIFT ;
 scalar_t__ nv_host_intr (int ,int) ;

__attribute__((used)) static irqreturn_t nv_do_interrupt(struct ata_host *host, u8 irq_stat)
{
 int i, handled = 0;

 for (i = 0; i < host->n_ports; i++) {
  handled += nv_host_intr(host->ports[i], irq_stat);
  irq_stat >>= NV_INT_PORT_SHIFT;
 }

 return IRQ_RETVAL(handled);
}

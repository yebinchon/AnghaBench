
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {int command_list_dma; int rxfis_dma; scalar_t__ mmio; TYPE_1__* dd; scalar_t__* completed; int flags; } ;
struct TYPE_2__ {int slot_groups; scalar_t__ mmio; } ;


 int DEF_PORT_IRQ ;
 scalar_t__ HOST_CAP ;
 int HOST_CAP_64 ;
 scalar_t__ HOST_IRQ_STAT ;
 int MTIP_PF_HOST_CAP_64 ;
 scalar_t__ PORT_FIS_ADDR ;
 scalar_t__ PORT_FIS_ADDR_HI ;
 scalar_t__ PORT_IRQ_MASK ;
 scalar_t__ PORT_IRQ_STAT ;
 scalar_t__ PORT_LST_ADDR ;
 scalar_t__ PORT_LST_ADDR_HI ;
 scalar_t__ PORT_SCR_ERR ;
 int mtip_deinit_port (struct mtip_port*) ;
 int readl (scalar_t__) ;
 int set_bit (int ,int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtip_init_port(struct mtip_port *port)
{
 int i;
 mtip_deinit_port(port);


 if (readl(port->dd->mmio + HOST_CAP) & HOST_CAP_64) {
  writel((port->command_list_dma >> 16) >> 16,
    port->mmio + PORT_LST_ADDR_HI);
  writel((port->rxfis_dma >> 16) >> 16,
    port->mmio + PORT_FIS_ADDR_HI);
  set_bit(MTIP_PF_HOST_CAP_64, &port->flags);
 }

 writel(port->command_list_dma & 0xFFFFFFFF,
   port->mmio + PORT_LST_ADDR);
 writel(port->rxfis_dma & 0xFFFFFFFF, port->mmio + PORT_FIS_ADDR);


 writel(readl(port->mmio + PORT_SCR_ERR), port->mmio + PORT_SCR_ERR);


 for (i = 0; i < port->dd->slot_groups; i++)
  writel(0xFFFFFFFF, port->completed[i]);


 writel(readl(port->mmio + PORT_IRQ_STAT), port->mmio + PORT_IRQ_STAT);


 writel(readl(port->dd->mmio + HOST_IRQ_STAT),
     port->dd->mmio + HOST_IRQ_STAT);


 writel(DEF_PORT_IRQ, port->mmio + PORT_IRQ_MASK);
}

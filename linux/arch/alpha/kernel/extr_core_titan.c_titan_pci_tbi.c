
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned long csr; } ;
struct TYPE_9__ {unsigned long csr; } ;
struct TYPE_11__ {TYPE_2__ gtlbiv; TYPE_1__ gtlbia; } ;
struct TYPE_12__ {TYPE_3__ g; } ;
struct TYPE_13__ {TYPE_4__ port_specific; } ;
typedef TYPE_5__ titan_pachip_port ;
struct TYPE_14__ {TYPE_5__ a_port; TYPE_5__ g_port; } ;
typedef TYPE_6__ titan_pachip ;
struct pci_controller {int index; } ;
typedef int dma_addr_t ;


 TYPE_6__* TITAN_pachip0 ;
 TYPE_6__* TITAN_pachip1 ;
 int mb () ;
 int wmb () ;

void
titan_pci_tbi(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
 titan_pachip *pachip =
   (hose->index & 1) ? TITAN_pachip1 : TITAN_pachip0;
 titan_pachip_port *port;
 volatile unsigned long *csr;
 unsigned long value;


 port = &pachip->g_port;
 if (hose->index & 2)
  port = &pachip->a_port;






 csr = &port->port_specific.g.gtlbia.csr;
 if (((start ^ end) & 0xffff0000) == 0)
  csr = &port->port_specific.g.gtlbiv.csr;



 value = (start & 0xffff0000) >> 12;

 wmb();
 *csr = value;
 mb();
 *csr;
}

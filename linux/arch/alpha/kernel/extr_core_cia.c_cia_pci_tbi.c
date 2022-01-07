
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vip ;
struct pci_controller {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ CIA_IOC_PCI_TBIA ;
 int mb () ;
 int wmb () ;

void
cia_pci_tbi(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
 wmb();
 *(vip)CIA_IOC_PCI_TBIA = 3;
 mb();
 *(vip)CIA_IOC_PCI_TBIA;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vulp ;
struct pci_controller {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ LCA_IOC_TBIA ;
 int mb () ;
 int wmb () ;

void
lca_pci_tbi(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
 wmb();
 *(vulp)LCA_IOC_TBIA = 0;
 mb();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_pbm_info {int pci_first_busno; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_LATENCY_TIMER ;
 int pci_config_write8 (int *,int) ;
 int * schizo_pci_config_mkaddr (struct pci_pbm_info*,int ,int ,int ) ;

__attribute__((used)) static void pbm_config_busmastering(struct pci_pbm_info *pbm)
{
 u8 *addr;




 addr = schizo_pci_config_mkaddr(pbm, pbm->pci_first_busno,
     0, PCI_CACHE_LINE_SIZE);
 pci_config_write8(addr, 64 / sizeof(u32));


 addr = schizo_pci_config_mkaddr(pbm, pbm->pci_first_busno,
     0, PCI_LATENCY_TIMER);
 pci_config_write8(addr, 64);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {int hrtimer_duration; int io_addr; struct pci_dev* pci_dev; } ;
typedef int resource_size_t ;


 int PAGE_SIZE ;
 int SNB_UNCORE_PCI_IMC_BAR_OFFSET ;
 int SNB_UNCORE_PCI_IMC_MAP_SIZE ;
 int UNCORE_SNB_IMC_HRTIMER_INTERVAL ;
 int ioremap (int,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static void snb_uncore_imc_init_box(struct intel_uncore_box *box)
{
 struct pci_dev *pdev = box->pci_dev;
 int where = SNB_UNCORE_PCI_IMC_BAR_OFFSET;
 resource_size_t addr;
 u32 pci_dword;

 pci_read_config_dword(pdev, where, &pci_dword);
 addr = pci_dword;






 addr &= ~(PAGE_SIZE - 1);

 box->io_addr = ioremap(addr, SNB_UNCORE_PCI_IMC_MAP_SIZE);
 box->hrtimer_duration = UNCORE_SNB_IMC_HRTIMER_INTERVAL;
}

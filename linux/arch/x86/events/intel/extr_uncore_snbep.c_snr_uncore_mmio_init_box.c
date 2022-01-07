
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {int io_addr; int dieid; } ;
typedef int resource_size_t ;


 int IVBEP_PMON_BOX_CTL_INT ;
 int SNR_IMC_MMIO_BASE_MASK ;
 int SNR_IMC_MMIO_BASE_OFFSET ;
 int SNR_IMC_MMIO_MEM0_MASK ;
 int SNR_IMC_MMIO_MEM0_OFFSET ;
 int SNR_IMC_MMIO_SIZE ;
 int ioremap (int,int ) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 struct pci_dev* snr_uncore_get_mc_dev (int ) ;
 unsigned int uncore_mmio_box_ctl (struct intel_uncore_box*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void snr_uncore_mmio_init_box(struct intel_uncore_box *box)
{
 struct pci_dev *pdev = snr_uncore_get_mc_dev(box->dieid);
 unsigned int box_ctl = uncore_mmio_box_ctl(box);
 resource_size_t addr;
 u32 pci_dword;

 if (!pdev)
  return;

 pci_read_config_dword(pdev, SNR_IMC_MMIO_BASE_OFFSET, &pci_dword);
 addr = (pci_dword & SNR_IMC_MMIO_BASE_MASK) << 23;

 pci_read_config_dword(pdev, SNR_IMC_MMIO_MEM0_OFFSET, &pci_dword);
 addr |= (pci_dword & SNR_IMC_MMIO_MEM0_MASK) << 12;

 addr += box_ctl;

 box->io_addr = ioremap(addr, SNR_IMC_MMIO_SIZE);
 if (!box->io_addr)
  return;

 writel(IVBEP_PMON_BOX_CTL_INT, box->io_addr);
}

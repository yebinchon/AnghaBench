
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ar2315_pci_ctrl {scalar_t__ cfg_mem; } ;


 int AR2315_PCIMISC_CFG_SEL ;
 scalar_t__ AR2315_PCI_CFG_SIZE ;
 scalar_t__ AR2315_PCI_INT_ABORT ;
 int AR2315_PCI_ISR ;
 int AR2315_PCI_MISC_CONFIG ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 scalar_t__ __raw_readl (scalar_t__) ;
 int __raw_writel (scalar_t__,scalar_t__) ;
 int ar2315_pci_reg_mask (struct ar2315_pci_ctrl*,int ,int ,int ) ;
 scalar_t__ ar2315_pci_reg_read (struct ar2315_pci_ctrl*,int ) ;
 int ar2315_pci_reg_write (struct ar2315_pci_ctrl*,int ,scalar_t__) ;
 int mb () ;

__attribute__((used)) static int ar2315_pci_cfg_access(struct ar2315_pci_ctrl *apc, unsigned devfn,
     int where, int size, u32 *ptr, bool write)
{
 int func = PCI_FUNC(devfn);
 int dev = PCI_SLOT(devfn);
 u32 addr = (1 << (13 + dev)) | (func << 8) | (where & ~3);
 u32 mask = 0xffffffff >> 8 * (4 - size);
 u32 sh = (where & 3) * 8;
 u32 value, isr;


 if (addr >= AR2315_PCI_CFG_SIZE || dev > 18)
  return PCIBIOS_DEVICE_NOT_FOUND;


 ar2315_pci_reg_write(apc, AR2315_PCI_ISR, AR2315_PCI_INT_ABORT);

 ar2315_pci_reg_mask(apc, AR2315_PCI_MISC_CONFIG, 0,
       AR2315_PCIMISC_CFG_SEL);

 mb();

 value = __raw_readl(apc->cfg_mem + addr);

 isr = ar2315_pci_reg_read(apc, AR2315_PCI_ISR);

 if (isr & AR2315_PCI_INT_ABORT)
  goto exit_err;

 if (write) {
  value = (value & ~(mask << sh)) | *ptr << sh;
  __raw_writel(value, apc->cfg_mem + addr);
  isr = ar2315_pci_reg_read(apc, AR2315_PCI_ISR);
  if (isr & AR2315_PCI_INT_ABORT)
   goto exit_err;
 } else {
  *ptr = (value >> sh) & mask;
 }

 goto exit;

exit_err:
 ar2315_pci_reg_write(apc, AR2315_PCI_ISR, AR2315_PCI_INT_ABORT);
 if (!write)
  *ptr = 0xffffffff;

exit:

 ar2315_pci_reg_mask(apc, AR2315_PCI_MISC_CONFIG, AR2315_PCIMISC_CFG_SEL,
       0);

 return isr & AR2315_PCI_INT_ABORT ? PCIBIOS_DEVICE_NOT_FOUND :
         PCIBIOS_SUCCESSFUL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int IBSCTL ;
 int IBSCTL_LVT_OFFSET_VALID ;
 int PCI_DEVICE_ID_AMD_10H_NB_MISC ;
 int PCI_VENDOR_ID_AMD ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int setup_ibs_ctl(int ibs_eilvt_off)
{
 struct pci_dev *cpu_cfg;
 int nodes;
 u32 value = 0;

 nodes = 0;
 cpu_cfg = ((void*)0);
 do {
  cpu_cfg = pci_get_device(PCI_VENDOR_ID_AMD,
      PCI_DEVICE_ID_AMD_10H_NB_MISC,
      cpu_cfg);
  if (!cpu_cfg)
   break;
  ++nodes;
  pci_write_config_dword(cpu_cfg, IBSCTL, ibs_eilvt_off
           | IBSCTL_LVT_OFFSET_VALID);
  pci_read_config_dword(cpu_cfg, IBSCTL, &value);
  if (value != (ibs_eilvt_off | IBSCTL_LVT_OFFSET_VALID)) {
   pci_dev_put(cpu_cfg);
   pr_debug("Failed to setup IBS LVT offset, IBSCTL = 0x%08x\n",
     value);
   return -EINVAL;
  }
 } while (1);

 if (!nodes) {
  pr_debug("No CPU node configured for IBS\n");
  return -ENODEV;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct pci_dev {scalar_t__ subordinate; } ;


 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_PARITY ;
 int PCI_BRIDGE_CTL_SERR ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 scalar_t__ PCI_ERR_CAP ;
 int PCI_ERR_CAP_ECRC_CHKC ;
 int PCI_ERR_CAP_ECRC_CHKE ;
 int PCI_ERR_CAP_ECRC_GENC ;
 int PCI_ERR_CAP_ECRC_GENE ;
 scalar_t__ PCI_ERR_COR_MASK ;
 scalar_t__ PCI_ERR_COR_STATUS ;
 int PCI_ERR_ROOT_CMD_COR_EN ;
 int PCI_ERR_ROOT_CMD_FATAL_EN ;
 int PCI_ERR_ROOT_CMD_NONFATAL_EN ;
 scalar_t__ PCI_ERR_ROOT_COMMAND ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_CERE ;
 int PCI_EXP_DEVCTL_FERE ;
 int PCI_EXP_DEVCTL_NFERE ;
 int PCI_EXP_DEVCTL_URRE ;
 int PCI_EXT_CAP_ID_ERR ;
 int PCI_LATENCY_TIMER ;
 int PCI_SEC_LATENCY_TIMER ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int) ;

int pcibios_plat_dev_init(struct pci_dev *dev)
{
 uint16_t config;
 uint32_t dconfig;
 int pos;







 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, 64 / 4);

 pci_write_config_byte(dev, PCI_LATENCY_TIMER, 64);



 pci_read_config_word(dev, PCI_COMMAND, &config);
 config |= PCI_COMMAND_PARITY | PCI_COMMAND_SERR;
 pci_write_config_word(dev, PCI_COMMAND, config);

 if (dev->subordinate) {

  pci_write_config_byte(dev, PCI_SEC_LATENCY_TIMER, 64);

  pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &config);
  config |= PCI_BRIDGE_CTL_PARITY | PCI_BRIDGE_CTL_SERR;
  pci_write_config_word(dev, PCI_BRIDGE_CONTROL, config);
 }


 config = PCI_EXP_DEVCTL_CERE;
 config |= PCI_EXP_DEVCTL_NFERE;
 config |= PCI_EXP_DEVCTL_FERE;
 config |= PCI_EXP_DEVCTL_URRE;
 pcie_capability_set_word(dev, PCI_EXP_DEVCTL, config);


 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
 if (pos) {

  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS,
          &dconfig);
  pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS,
           dconfig);


  pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, 0);







  pci_read_config_dword(dev, pos + PCI_ERR_COR_STATUS, &dconfig);
  pci_write_config_dword(dev, pos + PCI_ERR_COR_STATUS, dconfig);


  pci_write_config_dword(dev, pos + PCI_ERR_COR_MASK, 0);

  pci_read_config_dword(dev, pos + PCI_ERR_CAP, &dconfig);

  if (config & PCI_ERR_CAP_ECRC_GENC)
   config |= PCI_ERR_CAP_ECRC_GENE;

  if (config & PCI_ERR_CAP_ECRC_CHKC)
   config |= PCI_ERR_CAP_ECRC_CHKE;
  pci_write_config_dword(dev, pos + PCI_ERR_CAP, dconfig);


  pci_write_config_dword(dev, pos + PCI_ERR_ROOT_COMMAND,
           PCI_ERR_ROOT_CMD_COR_EN |
           PCI_ERR_ROOT_CMD_NONFATAL_EN |
           PCI_ERR_ROOT_CMD_FATAL_EN);

  pci_read_config_dword(dev, pos + PCI_ERR_ROOT_STATUS, &dconfig);
  pci_write_config_dword(dev, pos + PCI_ERR_ROOT_STATUS, dconfig);
 }

 return 0;
}

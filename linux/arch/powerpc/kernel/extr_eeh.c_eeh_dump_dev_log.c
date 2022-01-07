
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* u32 ;
struct pci_dn {int devfn; int busno; TYPE_1__* phb; } ;
struct eeh_dev {int mode; int pcix_cap; int pcie_cap; int aer_cap; } ;
typedef int buffer ;
struct TYPE_4__ {int (* read_config ) (struct pci_dn*,int,int,char**) ;} ;
struct TYPE_3__ {int global_number; } ;


 int EEH_DEV_BRIDGE ;
 int PCI_BRIDGE_CONTROL ;
 int PCI_COMMAND ;
 int PCI_FUNC (int ) ;
 int PCI_SEC_STATUS ;
 int PCI_SLOT (int ) ;
 int PCI_VENDOR_ID ;
 struct pci_dn* eeh_dev_to_pdn (struct eeh_dev*) ;
 TYPE_2__* eeh_ops ;
 int pr_warn (char*,...) ;
 int scnprintf (char*,int,char*,...) ;
 int stub1 (struct pci_dn*,int,int,char**) ;
 int stub2 (struct pci_dn*,int,int,char**) ;
 int stub3 (struct pci_dn*,int,int,char**) ;
 int stub4 (struct pci_dn*,int,int,char**) ;
 int stub5 (struct pci_dn*,int,int,char**) ;
 int stub6 (struct pci_dn*,int,int,char**) ;
 int stub7 (struct pci_dn*,int,int,char**) ;
 int stub8 (struct pci_dn*,int,int,char**) ;

__attribute__((used)) static size_t eeh_dump_dev_log(struct eeh_dev *edev, char *buf, size_t len)
{
 struct pci_dn *pdn = eeh_dev_to_pdn(edev);
 u32 cfg;
 int cap, i;
 int n = 0, l = 0;
 char buffer[128];

 if (!pdn) {
  pr_warn("EEH: Note: No error log for absent device.\n");
  return 0;
 }

 n += scnprintf(buf+n, len-n, "%04x:%02x:%02x.%01x\n",
         pdn->phb->global_number, pdn->busno,
         PCI_SLOT(pdn->devfn), PCI_FUNC(pdn->devfn));
 pr_warn("EEH: of node=%04x:%02x:%02x.%01x\n",
  pdn->phb->global_number, pdn->busno,
  PCI_SLOT(pdn->devfn), PCI_FUNC(pdn->devfn));

 eeh_ops->read_config(pdn, PCI_VENDOR_ID, 4, &cfg);
 n += scnprintf(buf+n, len-n, "dev/vend:%08x\n", cfg);
 pr_warn("EEH: PCI device/vendor: %08x\n", cfg);

 eeh_ops->read_config(pdn, PCI_COMMAND, 4, &cfg);
 n += scnprintf(buf+n, len-n, "cmd/stat:%x\n", cfg);
 pr_warn("EEH: PCI cmd/status register: %08x\n", cfg);


 if (edev->mode & EEH_DEV_BRIDGE) {
  eeh_ops->read_config(pdn, PCI_SEC_STATUS, 2, &cfg);
  n += scnprintf(buf+n, len-n, "sec stat:%x\n", cfg);
  pr_warn("EEH: Bridge secondary status: %04x\n", cfg);

  eeh_ops->read_config(pdn, PCI_BRIDGE_CONTROL, 2, &cfg);
  n += scnprintf(buf+n, len-n, "brdg ctl:%x\n", cfg);
  pr_warn("EEH: Bridge control: %04x\n", cfg);
 }


 cap = edev->pcix_cap;
 if (cap) {
  eeh_ops->read_config(pdn, cap, 4, &cfg);
  n += scnprintf(buf+n, len-n, "pcix-cmd:%x\n", cfg);
  pr_warn("EEH: PCI-X cmd: %08x\n", cfg);

  eeh_ops->read_config(pdn, cap+4, 4, &cfg);
  n += scnprintf(buf+n, len-n, "pcix-stat:%x\n", cfg);
  pr_warn("EEH: PCI-X status: %08x\n", cfg);
 }


 cap = edev->pcie_cap;
 if (cap) {
  n += scnprintf(buf+n, len-n, "pci-e cap10:\n");
  pr_warn("EEH: PCI-E capabilities and status follow:\n");

  for (i=0; i<=8; i++) {
   eeh_ops->read_config(pdn, cap+4*i, 4, &cfg);
   n += scnprintf(buf+n, len-n, "%02x:%x\n", 4*i, cfg);

   if ((i % 4) == 0) {
    if (i != 0)
     pr_warn("%s\n", buffer);

    l = scnprintf(buffer, sizeof(buffer),
           "EEH: PCI-E %02x: %08x ",
           4*i, cfg);
   } else {
    l += scnprintf(buffer+l, sizeof(buffer)-l,
            "%08x ", cfg);
   }

  }

  pr_warn("%s\n", buffer);
 }


 cap = edev->aer_cap;
 if (cap) {
  n += scnprintf(buf+n, len-n, "pci-e AER:\n");
  pr_warn("EEH: PCI-E AER capability register set follows:\n");

  for (i=0; i<=13; i++) {
   eeh_ops->read_config(pdn, cap+4*i, 4, &cfg);
   n += scnprintf(buf+n, len-n, "%02x:%x\n", 4*i, cfg);

   if ((i % 4) == 0) {
    if (i != 0)
     pr_warn("%s\n", buffer);

    l = scnprintf(buffer, sizeof(buffer),
           "EEH: PCI-E AER %02x: %08x ",
           4*i, cfg);
   } else {
    l += scnprintf(buffer+l, sizeof(buffer)-l,
            "%08x ", cfg);
   }
  }

  pr_warn("%s\n", buffer);
 }

 return n;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; } ;


 int PCI_ANY_ID ;
 int PCI_DEVICE_ID_INTEL_82801BA_10 ;
 int PCI_DEVICE_ID_INTEL_82801CA_12 ;
 int PCI_DEVICE_ID_INTEL_82801DB_12 ;
 int PCI_DEVICE_ID_INTEL_82815_MC ;
 int PCI_VENDOR_ID_INTEL ;
 int pci_dev_put (struct pci_dev*) ;
 void* pci_get_subsys (int ,int ,int ,int ,int *) ;
 int pr_debug (char*) ;
 int * speedstep_chipset_dev ;

__attribute__((used)) static unsigned int speedstep_detect_chipset(void)
{
 speedstep_chipset_dev = pci_get_subsys(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_82801DB_12,
         PCI_ANY_ID, PCI_ANY_ID,
         ((void*)0));
 if (speedstep_chipset_dev)
  return 4;

 speedstep_chipset_dev = pci_get_subsys(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_82801CA_12,
         PCI_ANY_ID, PCI_ANY_ID,
         ((void*)0));
 if (speedstep_chipset_dev)
  return 3;


 speedstep_chipset_dev = pci_get_subsys(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_82801BA_10,
         PCI_ANY_ID, PCI_ANY_ID,
         ((void*)0));
 if (speedstep_chipset_dev) {




  struct pci_dev *hostbridge;

  hostbridge = pci_get_subsys(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_82815_MC,
         PCI_ANY_ID, PCI_ANY_ID,
         ((void*)0));

  if (!hostbridge)
   return 2;

  if (hostbridge->revision < 5) {
   pr_debug("hostbridge does not support speedstep\n");
   speedstep_chipset_dev = ((void*)0);
   pci_dev_put(hostbridge);
   return 0;
  }

  pci_dev_put(hostbridge);
  return 2;
 }

 return 0;
}

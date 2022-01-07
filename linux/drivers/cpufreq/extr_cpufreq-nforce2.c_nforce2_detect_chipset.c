
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; } ;


 int ENODEV ;
 int PCI_ANY_ID ;
 int PCI_DEVICE_ID_NVIDIA_NFORCE2 ;
 int PCI_VENDOR_ID_NVIDIA ;
 TYPE_1__* nforce2_dev ;
 TYPE_1__* pci_get_subsys (int ,int ,int ,int ,int *) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int nforce2_detect_chipset(void)
{
 nforce2_dev = pci_get_subsys(PCI_VENDOR_ID_NVIDIA,
     PCI_DEVICE_ID_NVIDIA_NFORCE2,
     PCI_ANY_ID, PCI_ANY_ID, ((void*)0));

 if (nforce2_dev == ((void*)0))
  return -ENODEV;

 pr_info("Detected nForce2 chipset revision %X\n",
  nforce2_dev->revision);
 pr_info("FSB changing is maybe unstable and can lead to crashes and data loss\n");

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_pci_driver ;
 scalar_t__ pci_registered ;
 int pci_unregister_driver (int *) ;

void ipmi_si_pci_shutdown(void)
{
 if (pci_registered)
  pci_unregister_driver(&ipmi_pci_driver);
}

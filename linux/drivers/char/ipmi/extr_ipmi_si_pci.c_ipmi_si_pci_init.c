
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_pci_driver ;
 int pci_register_driver (int *) ;
 int pci_registered ;
 int pr_err (char*,int) ;
 scalar_t__ si_trypci ;

void ipmi_si_pci_init(void)
{
 if (si_trypci) {
  int rv = pci_register_driver(&ipmi_pci_driver);
  if (rv)
   pr_err("Unable to register PCI driver: %d\n", rv);
  else
   pci_registered = 1;
 }
}

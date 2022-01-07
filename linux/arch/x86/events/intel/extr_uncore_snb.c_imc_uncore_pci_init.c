
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;


 int ENODEV ;
 struct pci_driver* imc_uncore_find_dev () ;
 int snb_pci_uncores ;
 struct pci_driver* uncore_pci_driver ;
 int uncore_pci_uncores ;

__attribute__((used)) static int imc_uncore_pci_init(void)
{
 struct pci_driver *imc_drv = imc_uncore_find_dev();

 if (!imc_drv)
  return -ENODEV;

 uncore_pci_uncores = snb_pci_uncores;
 uncore_pci_driver = imc_drv;

 return 0;
}

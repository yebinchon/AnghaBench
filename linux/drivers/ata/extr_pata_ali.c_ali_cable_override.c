
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_vendor; int subsystem_device; } ;


 int cable_dmi_table ;
 scalar_t__ dmi_check_system (int ) ;

__attribute__((used)) static int ali_cable_override(struct pci_dev *pdev)
{

 if (pdev->subsystem_vendor == 0x10CF && pdev->subsystem_device == 0x10AF)
     return 1;

 if (pdev->subsystem_vendor == 0x1071 && pdev->subsystem_device == 0x8317)
  return 1;

 if (dmi_check_system(cable_dmi_table))
  return 1;
 return 0;
}

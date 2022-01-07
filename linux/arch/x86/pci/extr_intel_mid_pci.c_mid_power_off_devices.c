
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int intel_mid_pwr_get_lss_id (struct pci_dev*) ;
 int mid_power_off_one_device (struct pci_dev*) ;
 int pci_soc_mode ;

__attribute__((used)) static void mid_power_off_devices(struct pci_dev *dev)
{
 int id;

 if (!pci_soc_mode)
  return;

 id = intel_mid_pwr_get_lss_id(dev);
 if (id < 0)
  return;





 mid_power_off_one_device(dev);
}

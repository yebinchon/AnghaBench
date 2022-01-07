
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_info (int *,char*) ;
 int dmi_check_system (int ) ;
 int msi_k8t_dmi_table ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;

__attribute__((used)) static void pci_fixup_msi_k8t_onboard_sound(struct pci_dev *dev)
{
 unsigned char val;
 if (!dmi_check_system(msi_k8t_dmi_table))
  return;

 pci_read_config_byte(dev, 0x50, &val);
 if (val & 0x40) {
  pci_write_config_byte(dev, 0x50, val & (~0x40));


  pci_read_config_byte(dev, 0x50, &val);
  if (val & 0x40)
   dev_info(&dev->dev, "Detected MSI K8T Neo2-FIR; "
     "can't enable onboard soundcard!\n");
  else
   dev_info(&dev->dev, "Detected MSI K8T Neo2-FIR; "
     "enabled onboard soundcard\n");
 }
}

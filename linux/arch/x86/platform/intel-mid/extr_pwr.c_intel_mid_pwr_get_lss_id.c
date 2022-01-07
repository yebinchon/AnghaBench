
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ERANGE ;
 scalar_t__ INTEL_MID_PWR_LSS_OFFSET ;
 int INTEL_MID_PWR_LSS_TYPE ;
 int LSS_MAX_DEVS ;
 int PCI_CAP_ID_VNDR ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;

int intel_mid_pwr_get_lss_id(struct pci_dev *pdev)
{
 int vndr;
 u8 id;





 vndr = pci_find_capability(pdev, PCI_CAP_ID_VNDR);
 if (!vndr)
  return -EINVAL;


 pci_read_config_byte(pdev, vndr + INTEL_MID_PWR_LSS_OFFSET, &id);
 if (!(id & INTEL_MID_PWR_LSS_TYPE))
  return -ENODEV;

 id &= ~INTEL_MID_PWR_LSS_TYPE;
 if (id >= LSS_MAX_DEVS)
  return -ERANGE;

 return id;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mid_pwr {int lock; } ;
typedef scalar_t__ pci_power_t ;


 int LSS_PWS_BITS ;
 scalar_t__ PCI_D0 ;
 scalar_t__ PCI_D3hot ;
 int __set_power_state (struct mid_pwr*,struct pci_dev*,scalar_t__,int,int,int) ;
 int intel_mid_pwr_get_lss_id (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mid_pwr_set_power_state(struct mid_pwr *pwr, struct pci_dev *pdev,
       pci_power_t state)
{
 int id, reg, bit;
 int ret;

 id = intel_mid_pwr_get_lss_id(pdev);
 if (id < 0)
  return id;

 reg = (id * LSS_PWS_BITS) / 32;
 bit = (id * LSS_PWS_BITS) % 32;


 if (state < PCI_D0)
  state = PCI_D0;
 if (state > PCI_D3hot)
  state = PCI_D3hot;

 mutex_lock(&pwr->lock);
 ret = __set_power_state(pwr, pdev, state, id, reg, bit);
 mutex_unlock(&pwr->lock);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct TYPE_3__ {int pass_dev_cnt; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_if_positive (int *) ;
 int eeh_dev_mutex ;
 int eeh_pe_change_owner (TYPE_1__*) ;
 int eeh_pe_passed (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;

void eeh_dev_release(struct pci_dev *pdev)
{
 struct eeh_dev *edev;

 mutex_lock(&eeh_dev_mutex);


 if (!pdev)
  goto out;


 edev = pci_dev_to_eeh_dev(pdev);
 if (!edev || !edev->pe || !eeh_pe_passed(edev->pe))
  goto out;


 WARN_ON(atomic_dec_if_positive(&edev->pe->pass_dev_cnt) < 0);
 eeh_pe_change_owner(edev->pe);
out:
 mutex_unlock(&eeh_dev_mutex);
}

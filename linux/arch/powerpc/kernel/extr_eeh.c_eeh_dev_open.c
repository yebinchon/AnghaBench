
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct TYPE_2__ {int pass_dev_cnt; } ;


 int ENODEV ;
 int atomic_inc (int *) ;
 int eeh_dev_mutex ;
 int eeh_pe_change_owner (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;

int eeh_dev_open(struct pci_dev *pdev)
{
 struct eeh_dev *edev;
 int ret = -ENODEV;

 mutex_lock(&eeh_dev_mutex);


 if (!pdev)
  goto out;


 edev = pci_dev_to_eeh_dev(pdev);
 if (!edev || !edev->pe)
  goto out;







 ret = eeh_pe_change_owner(edev->pe);
 if (ret)
  goto out;


 atomic_inc(&edev->pe->pass_dev_cnt);
 mutex_unlock(&eeh_dev_mutex);

 return 0;
out:
 mutex_unlock(&eeh_dev_mutex);
 return ret;
}

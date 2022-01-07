
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {scalar_t__ domain; } ;


 scalar_t__ ZPCI_NR_DEVICES ;
 int clear_bit (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zpci_domain ;
 int zpci_domain_lock ;

__attribute__((used)) static void zpci_free_domain(struct zpci_dev *zdev)
{
 if (zdev->domain >= ZPCI_NR_DEVICES)
  return;

 spin_lock(&zpci_domain_lock);
 clear_bit(zdev->domain, zpci_domain);
 spin_unlock(&zpci_domain_lock);
}

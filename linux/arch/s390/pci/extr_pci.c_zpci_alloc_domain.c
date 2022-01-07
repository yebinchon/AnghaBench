
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct zpci_dev {scalar_t__ domain; scalar_t__ uid; } ;


 int EEXIST ;
 int ENOSPC ;
 scalar_t__ ZPCI_NR_DEVICES ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (scalar_t__,int ) ;
 int zpci_domain ;
 int zpci_domain_lock ;
 scalar_t__ zpci_unique_uid ;

__attribute__((used)) static int zpci_alloc_domain(struct zpci_dev *zdev)
{
 if (zpci_unique_uid) {
  zdev->domain = (u16) zdev->uid;
  if (zdev->domain >= ZPCI_NR_DEVICES)
   return 0;

  spin_lock(&zpci_domain_lock);
  if (test_bit(zdev->domain, zpci_domain)) {
   spin_unlock(&zpci_domain_lock);
   return -EEXIST;
  }
  set_bit(zdev->domain, zpci_domain);
  spin_unlock(&zpci_domain_lock);
  return 0;
 }

 spin_lock(&zpci_domain_lock);
 zdev->domain = find_first_zero_bit(zpci_domain, ZPCI_NR_DEVICES);
 if (zdev->domain == ZPCI_NR_DEVICES) {
  spin_unlock(&zpci_domain_lock);
  return -ENOSPC;
 }
 set_bit(zdev->domain, zpci_domain);
 spin_unlock(&zpci_domain_lock);
 return 0;
}

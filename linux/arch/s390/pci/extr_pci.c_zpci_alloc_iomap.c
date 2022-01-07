
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;


 int ENOSPC ;
 unsigned long ZPCI_IOMAP_ENTRIES ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zpci_iomap_bitmap ;
 int zpci_iomap_lock ;

__attribute__((used)) static int zpci_alloc_iomap(struct zpci_dev *zdev)
{
 unsigned long entry;

 spin_lock(&zpci_iomap_lock);
 entry = find_first_zero_bit(zpci_iomap_bitmap, ZPCI_IOMAP_ENTRIES);
 if (entry == ZPCI_IOMAP_ENTRIES) {
  spin_unlock(&zpci_iomap_lock);
  return -ENOSPC;
 }
 set_bit(entry, zpci_iomap_bitmap);
 spin_unlock(&zpci_iomap_lock);
 return entry;
}

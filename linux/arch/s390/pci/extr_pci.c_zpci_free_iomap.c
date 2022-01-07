
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_iomap_entry {int dummy; } ;
struct zpci_dev {int dummy; } ;


 int clear_bit (int,int ) ;
 int memset (int *,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zpci_iomap_bitmap ;
 int zpci_iomap_lock ;
 int * zpci_iomap_start ;

__attribute__((used)) static void zpci_free_iomap(struct zpci_dev *zdev, int entry)
{
 spin_lock(&zpci_iomap_lock);
 memset(&zpci_iomap_start[entry], 0, sizeof(struct zpci_iomap_entry));
 clear_bit(entry, zpci_iomap_bitmap);
 spin_unlock(&zpci_iomap_lock);
}

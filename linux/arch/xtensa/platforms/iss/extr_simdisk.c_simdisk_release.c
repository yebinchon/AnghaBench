
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simdisk {int lock; int users; } ;
struct gendisk {struct simdisk* private_data; } ;
typedef int fmode_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void simdisk_release(struct gendisk *disk, fmode_t mode)
{
 struct simdisk *dev = disk->private_data;
 spin_lock(&dev->lock);
 --dev->users;
 spin_unlock(&dev->lock);
}

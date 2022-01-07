
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct hd_struct {int partno; } ;
struct gendisk {int flags; int lookup_sem; } ;
typedef int dev_t ;


 scalar_t__ BLOCK_EXT_MAJOR ;
 int GENHD_FL_HIDDEN ;
 int GENHD_FL_UP ;
 scalar_t__ MAJOR (int ) ;
 int MINOR (int ) ;
 int bdev_map ;
 int blk_mangle_minor (int ) ;
 struct gendisk* dev_to_disk (int ) ;
 int down_read (int *) ;
 int ext_devt_idr ;
 int ext_devt_lock ;
 scalar_t__ get_disk_and_module (struct gendisk*) ;
 struct hd_struct* idr_find (int *,int ) ;
 struct kobject* kobj_lookup (int ,int ,int*) ;
 int kobj_to_dev (struct kobject*) ;
 struct gendisk* part_to_disk (struct hd_struct*) ;
 int put_disk_and_module (struct gendisk*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

struct gendisk *get_gendisk(dev_t devt, int *partno)
{
 struct gendisk *disk = ((void*)0);

 if (MAJOR(devt) != BLOCK_EXT_MAJOR) {
  struct kobject *kobj;

  kobj = kobj_lookup(bdev_map, devt, partno);
  if (kobj)
   disk = dev_to_disk(kobj_to_dev(kobj));
 } else {
  struct hd_struct *part;

  spin_lock_bh(&ext_devt_lock);
  part = idr_find(&ext_devt_idr, blk_mangle_minor(MINOR(devt)));
  if (part && get_disk_and_module(part_to_disk(part))) {
   *partno = part->partno;
   disk = part_to_disk(part);
  }
  spin_unlock_bh(&ext_devt_lock);
 }

 if (!disk)
  return ((void*)0);





 down_read(&disk->lookup_sem);
 if (unlikely((disk->flags & GENHD_FL_HIDDEN) ||
       !(disk->flags & GENHD_FL_UP))) {
  up_read(&disk->lookup_sem);
  put_disk_and_module(disk);
  disk = ((void*)0);
 } else {
  up_read(&disk->lookup_sem);
 }
 return disk;
}

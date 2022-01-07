
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct gendisk {int minors; } ;
struct device {int devt; } ;
struct class_dev_iter {int dummy; } ;
typedef int dev_t ;


 int MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 int MKDEV (int ,scalar_t__) ;
 int block_class ;
 int class_dev_iter_exit (struct class_dev_iter*) ;
 int class_dev_iter_init (struct class_dev_iter*,int *,int *,int *) ;
 struct device* class_dev_iter_next (struct class_dev_iter*) ;
 int dev_name (struct device*) ;
 struct gendisk* dev_to_disk (struct device*) ;
 struct hd_struct* disk_get_part (struct gendisk*,int) ;
 int disk_put_part (struct hd_struct*) ;
 int disk_type ;
 int part_devt (struct hd_struct*) ;
 scalar_t__ strcmp (int ,char const*) ;

dev_t blk_lookup_devt(const char *name, int partno)
{
 dev_t devt = MKDEV(0, 0);
 struct class_dev_iter iter;
 struct device *dev;

 class_dev_iter_init(&iter, &block_class, ((void*)0), &disk_type);
 while ((dev = class_dev_iter_next(&iter))) {
  struct gendisk *disk = dev_to_disk(dev);
  struct hd_struct *part;

  if (strcmp(dev_name(dev), name))
   continue;

  if (partno < disk->minors) {



   devt = MKDEV(MAJOR(dev->devt),
         MINOR(dev->devt) + partno);
   break;
  }
  part = disk_get_part(disk, partno);
  if (part) {
   devt = part_devt(part);
   disk_put_part(part);
   break;
  }
  disk_put_part(part);
 }
 class_dev_iter_exit(&iter);
 return devt;
}

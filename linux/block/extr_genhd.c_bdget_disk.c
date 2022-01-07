
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct gendisk {int dummy; } ;
struct block_device {int dummy; } ;


 struct block_device* bdget (int ) ;
 struct hd_struct* disk_get_part (struct gendisk*,int) ;
 int disk_put_part (struct hd_struct*) ;
 int part_devt (struct hd_struct*) ;

struct block_device *bdget_disk(struct gendisk *disk, int partno)
{
 struct hd_struct *part;
 struct block_device *bdev = ((void*)0);

 part = disk_get_part(disk, partno);
 if (part)
  bdev = bdget(part_devt(part));
 disk_put_part(part);

 return bdev;
}

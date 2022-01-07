
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {scalar_t__ ev; } ;


 int __disk_unblock_events (struct gendisk*,int) ;

void disk_unblock_events(struct gendisk *disk)
{
 if (disk->ev)
  __disk_unblock_events(disk, 0);
}

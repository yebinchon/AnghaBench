
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {TYPE_1__* ev; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int node; } ;


 int disk_block_events (struct gendisk*) ;
 int disk_events_attrs ;
 int disk_events_mutex ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_files (int *,int ) ;

__attribute__((used)) static void disk_del_events(struct gendisk *disk)
{
 if (disk->ev) {
  disk_block_events(disk);

  mutex_lock(&disk_events_mutex);
  list_del_init(&disk->ev->node);
  mutex_unlock(&disk_events_mutex);
 }

 sysfs_remove_files(&disk_to_dev(disk)->kobj, disk_events_attrs);
}

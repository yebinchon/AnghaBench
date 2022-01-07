
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {TYPE_1__* ev; int disk_name; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int node; } ;


 int __disk_unblock_events (struct gendisk*,int) ;
 int disk_events ;
 int disk_events_attrs ;
 int disk_events_mutex ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ) ;
 scalar_t__ sysfs_create_files (int *,int ) ;

__attribute__((used)) static void disk_add_events(struct gendisk *disk)
{

 if (sysfs_create_files(&disk_to_dev(disk)->kobj, disk_events_attrs) < 0)
  pr_warn("%s: failed to create sysfs files for events\n",
   disk->disk_name);

 if (!disk->ev)
  return;

 mutex_lock(&disk_events_mutex);
 list_add_tail(&disk->ev->node, &disk_events);
 mutex_unlock(&disk_events_mutex);





 __disk_unblock_events(disk, 1);
}

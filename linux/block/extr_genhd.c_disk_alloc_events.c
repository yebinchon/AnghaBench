
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {struct disk_events* ev; int disk_name; int events; TYPE_1__* fops; } ;
struct disk_events {int block; int poll_msecs; int dwork; int block_mutex; int lock; struct gendisk* disk; int node; } ;
struct TYPE_2__ {int check_events; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int disk_events_workfn ;
 struct disk_events* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_warn (char*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void disk_alloc_events(struct gendisk *disk)
{
 struct disk_events *ev;

 if (!disk->fops->check_events || !disk->events)
  return;

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev) {
  pr_warn("%s: failed to initialize events\n", disk->disk_name);
  return;
 }

 INIT_LIST_HEAD(&ev->node);
 ev->disk = disk;
 spin_lock_init(&ev->lock);
 mutex_init(&ev->block_mutex);
 ev->block = 1;
 ev->poll_msecs = -1;
 INIT_DELAYED_WORK(&ev->dwork, disk_events_workfn);

 disk->ev = ev;
}

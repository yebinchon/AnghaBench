
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int cmd_size; int nr_hw_queues; int nr_maps; int queue_depth; int flags; int numa_node; int * ops; } ;
struct pd_unit {int drive; struct gendisk* gd; TYPE_1__ tag_set; int name; } ;
struct pd_req {int dummy; } ;
struct gendisk {int first_minor; TYPE_2__* queue; struct pd_unit* private_data; int events; int major; int * fops; int disk_name; } ;
struct TYPE_10__ {struct pd_unit* queuedata; } ;


 int BLK_BOUNCE_HIGH ;
 int BLK_MQ_F_BLOCKING ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int DISK_EVENT_MEDIA_CHANGE ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int NUMA_NO_NODE ;
 int PD_BITS ;
 struct gendisk* alloc_disk (int) ;
 scalar_t__ blk_mq_alloc_tag_set (TYPE_1__*) ;
 int blk_mq_free_tag_set (TYPE_1__*) ;
 TYPE_2__* blk_mq_init_queue (TYPE_1__*) ;
 int blk_queue_bounce_limit (TYPE_2__*,int ) ;
 int blk_queue_max_hw_sectors (TYPE_2__*,int ) ;
 int cluster ;
 int major ;
 int memset (TYPE_1__*,int ,int) ;
 struct pd_unit* pd ;
 int pd_fops ;
 int pd_identify ;
 int pd_mq_ops ;
 scalar_t__ pd_special_command (struct pd_unit*,int ) ;
 int put_disk (struct gendisk*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void pd_probe_drive(struct pd_unit *disk)
{
 struct gendisk *p;

 p = alloc_disk(1 << PD_BITS);
 if (!p)
  return;

 strcpy(p->disk_name, disk->name);
 p->fops = &pd_fops;
 p->major = major;
 p->first_minor = (disk - pd) << PD_BITS;
 p->events = DISK_EVENT_MEDIA_CHANGE;
 disk->gd = p;
 p->private_data = disk;

 memset(&disk->tag_set, 0, sizeof(disk->tag_set));
 disk->tag_set.ops = &pd_mq_ops;
 disk->tag_set.cmd_size = sizeof(struct pd_req);
 disk->tag_set.nr_hw_queues = 1;
 disk->tag_set.nr_maps = 1;
 disk->tag_set.queue_depth = 2;
 disk->tag_set.numa_node = NUMA_NO_NODE;
 disk->tag_set.flags = BLK_MQ_F_SHOULD_MERGE | BLK_MQ_F_BLOCKING;

 if (blk_mq_alloc_tag_set(&disk->tag_set))
  return;

 p->queue = blk_mq_init_queue(&disk->tag_set);
 if (IS_ERR(p->queue)) {
  blk_mq_free_tag_set(&disk->tag_set);
  p->queue = ((void*)0);
  return;
 }

 p->queue->queuedata = disk;
 blk_queue_max_hw_sectors(p->queue, cluster);
 blk_queue_bounce_limit(p->queue, BLK_BOUNCE_HIGH);

 if (disk->drive == -1) {
  for (disk->drive = 0; disk->drive <= 1; disk->drive++)
   if (pd_special_command(disk, pd_identify) == 0)
    return;
 } else if (pd_special_command(disk, pd_identify) == 0)
  return;
 disk->gd = ((void*)0);
 put_disk(p);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int capacity; scalar_t__ mask; scalar_t__ speed; struct pcd_unit* handle; int * ops; int * name; } ;
struct pcd_unit {int changed; int * name; TYPE_1__ info; scalar_t__ drive; scalar_t__ last_sense; scalar_t__ present; int pia; int * pi; struct gendisk* disk; int rq_list; int tag_set; } ;
struct gendisk {int first_minor; int events; int flags; int * fops; int disk_name; int major; TYPE_2__* queue; } ;
struct TYPE_6__ {struct pcd_unit* queuedata; } ;


 int BLK_BOUNCE_HIGH ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int DISK_EVENT_MEDIA_CHANGE ;
 size_t D_PRT ;
 size_t D_SLV ;
 int GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PCD_UNITS ;
 struct gendisk* alloc_disk (int) ;
 TYPE_2__* blk_mq_init_sq_queue (int *,int *,int,int ) ;
 int blk_queue_bounce_limit (TYPE_2__*,int ) ;
 scalar_t__*** drives ;
 int major ;
 char* name ;
 struct pcd_unit* pcd ;
 int pcd_bdops ;
 int pcd_dops ;
 scalar_t__ pcd_drive_count ;
 int pcd_mq_ops ;
 int put_disk (struct gendisk*) ;
 int snprintf (int *,int,char*,char*,int) ;
 int strcpy (int ,int *) ;

__attribute__((used)) static void pcd_init_units(void)
{
 struct pcd_unit *cd;
 int unit;

 pcd_drive_count = 0;
 for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
  struct gendisk *disk = alloc_disk(1);

  if (!disk)
   continue;

  disk->queue = blk_mq_init_sq_queue(&cd->tag_set, &pcd_mq_ops,
         1, BLK_MQ_F_SHOULD_MERGE);
  if (IS_ERR(disk->queue)) {
   disk->queue = ((void*)0);
   put_disk(disk);
   continue;
  }

  INIT_LIST_HEAD(&cd->rq_list);
  disk->queue->queuedata = cd;
  blk_queue_bounce_limit(disk->queue, BLK_BOUNCE_HIGH);
  cd->disk = disk;
  cd->pi = &cd->pia;
  cd->present = 0;
  cd->last_sense = 0;
  cd->changed = 1;
  cd->drive = (*drives[unit])[D_SLV];
  if ((*drives[unit])[D_PRT])
   pcd_drive_count++;

  cd->name = &cd->info.name[0];
  snprintf(cd->name, sizeof(cd->info.name), "%s%d", name, unit);
  cd->info.ops = &pcd_dops;
  cd->info.handle = cd;
  cd->info.speed = 0;
  cd->info.capacity = 1;
  cd->info.mask = 0;
  disk->major = major;
  disk->first_minor = unit;
  strcpy(disk->disk_name, cd->name);
  disk->fops = &pcd_bdops;
  disk->flags = GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE;
  disk->events = DISK_EVENT_MEDIA_CHANGE;
 }
}

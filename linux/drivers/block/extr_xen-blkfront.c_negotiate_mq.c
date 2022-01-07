
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkfront_ring_info {int ring_lock; int work; struct blkfront_info* dev_info; int grants; int indirect_pages; } ;
struct blkfront_info {int nr_rings; struct blkfront_ring_info* rinfo; TYPE_1__* xbdev; } ;
struct TYPE_2__ {int otherend; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int blkif_restart_queue ;
 struct blkfront_ring_info* kvcalloc (int,int,int ) ;
 int min (unsigned int,int ) ;
 int spin_lock_init (int *) ;
 int xen_blkif_max_queues ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*) ;
 unsigned int xenbus_read_unsigned (int ,char*,int) ;

__attribute__((used)) static int negotiate_mq(struct blkfront_info *info)
{
 unsigned int backend_max_queues;
 unsigned int i;

 BUG_ON(info->nr_rings);


 backend_max_queues = xenbus_read_unsigned(info->xbdev->otherend,
        "multi-queue-max-queues", 1);
 info->nr_rings = min(backend_max_queues, xen_blkif_max_queues);

 if (!info->nr_rings)
  info->nr_rings = 1;

 info->rinfo = kvcalloc(info->nr_rings,
          sizeof(struct blkfront_ring_info),
          GFP_KERNEL);
 if (!info->rinfo) {
  xenbus_dev_fatal(info->xbdev, -ENOMEM, "allocating ring_info structure");
  info->nr_rings = 0;
  return -ENOMEM;
 }

 for (i = 0; i < info->nr_rings; i++) {
  struct blkfront_ring_info *rinfo;

  rinfo = &info->rinfo[i];
  INIT_LIST_HEAD(&rinfo->indirect_pages);
  INIT_LIST_HEAD(&rinfo->grants);
  rinfo->dev_info = info;
  INIT_WORK(&rinfo->work, blkif_restart_queue);
  spin_lock_init(&rinfo->ring_lock);
 }
 return 0;
}

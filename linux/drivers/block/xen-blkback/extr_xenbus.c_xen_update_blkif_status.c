
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xen_blkif_ring {int * xenblkd; int irq; } ;
struct TYPE_9__ {TYPE_2__* bdev; } ;
struct xen_blkif {int nr_rings; struct xen_blkif_ring* rings; TYPE_6__* be; TYPE_3__ vbd; } ;
struct TYPE_11__ {TYPE_4__* dev; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_1__* bd_inode; } ;
struct TYPE_7__ {int i_mapping; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TASK_COMM_LEN ;
 scalar_t__ XenbusStateConnected ;
 int blkback_name (struct xen_blkif*,char*) ;
 int connect (TYPE_6__*) ;
 int filemap_write_and_wait (int ) ;
 int invalidate_inode_pages2 (int ) ;
 int * kthread_run (int ,struct xen_blkif_ring*,char*,char*,int) ;
 int kthread_stop (int *) ;
 int xen_blkif_schedule ;
 int xenbus_dev_error (TYPE_4__*,int,char*) ;
 int xenbus_dev_fatal (TYPE_4__*,int,char*,char*,int) ;

__attribute__((used)) static void xen_update_blkif_status(struct xen_blkif *blkif)
{
 int err;
 char name[TASK_COMM_LEN];
 struct xen_blkif_ring *ring;
 int i;


 if (!blkif->rings || !blkif->rings[0].irq || !blkif->vbd.bdev)
  return;


 if (blkif->be->dev->state == XenbusStateConnected)
  return;


 connect(blkif->be);
 if (blkif->be->dev->state != XenbusStateConnected)
  return;

 err = blkback_name(blkif, name);
 if (err) {
  xenbus_dev_error(blkif->be->dev, err, "get blkback dev name");
  return;
 }

 err = filemap_write_and_wait(blkif->vbd.bdev->bd_inode->i_mapping);
 if (err) {
  xenbus_dev_error(blkif->be->dev, err, "block flush");
  return;
 }
 invalidate_inode_pages2(blkif->vbd.bdev->bd_inode->i_mapping);

 for (i = 0; i < blkif->nr_rings; i++) {
  ring = &blkif->rings[i];
  ring->xenblkd = kthread_run(xen_blkif_schedule, ring, "%s-%d", name, i);
  if (IS_ERR(ring->xenblkd)) {
   err = PTR_ERR(ring->xenblkd);
   ring->xenblkd = ((void*)0);
   xenbus_dev_fatal(blkif->be->dev, err,
     "start %s-%d xenblkd", name, i);
   goto out;
  }
 }
 return;

out:
 while (--i >= 0) {
  ring = &blkif->rings[i];
  kthread_stop(ring->xenblkd);
 }
 return;
}

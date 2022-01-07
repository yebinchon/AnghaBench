
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_vbd {int readonly; int flush_support; int discard_secure; int type; struct block_device* bdev; int size; int pdevice; int handle; } ;
struct xen_blkif {int domid; struct xen_vbd vbd; } ;
struct request_queue {int queue_flags; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int blkif_vdev_t ;
struct TYPE_2__ {int flags; } ;


 int ENOENT ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GENHD_FL_CD ;
 int GENHD_FL_REMOVABLE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int MKDEV (unsigned int,unsigned int) ;
 int QUEUE_FLAG_WC ;
 int VDISK_CDROM ;
 int VDISK_REMOVABLE ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 scalar_t__ blk_queue_secure_erase (struct request_queue*) ;
 struct block_device* blkdev_get_by_dev (int ,int ,int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_warn (char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int vbd_sz (struct xen_vbd*) ;
 int xen_vbd_free (struct xen_vbd*) ;

__attribute__((used)) static int xen_vbd_create(struct xen_blkif *blkif, blkif_vdev_t handle,
     unsigned major, unsigned minor, int readonly,
     int cdrom)
{
 struct xen_vbd *vbd;
 struct block_device *bdev;
 struct request_queue *q;

 vbd = &blkif->vbd;
 vbd->handle = handle;
 vbd->readonly = readonly;
 vbd->type = 0;

 vbd->pdevice = MKDEV(major, minor);

 bdev = blkdev_get_by_dev(vbd->pdevice, vbd->readonly ?
     FMODE_READ : FMODE_WRITE, ((void*)0));

 if (IS_ERR(bdev)) {
  pr_warn("xen_vbd_create: device %08x could not be opened\n",
   vbd->pdevice);
  return -ENOENT;
 }

 vbd->bdev = bdev;
 if (vbd->bdev->bd_disk == ((void*)0)) {
  pr_warn("xen_vbd_create: device %08x doesn't exist\n",
   vbd->pdevice);
  xen_vbd_free(vbd);
  return -ENOENT;
 }
 vbd->size = vbd_sz(vbd);

 if (vbd->bdev->bd_disk->flags & GENHD_FL_CD || cdrom)
  vbd->type |= VDISK_CDROM;
 if (vbd->bdev->bd_disk->flags & GENHD_FL_REMOVABLE)
  vbd->type |= VDISK_REMOVABLE;

 q = bdev_get_queue(bdev);
 if (q && test_bit(QUEUE_FLAG_WC, &q->queue_flags))
  vbd->flush_support = 1;

 if (q && blk_queue_secure_erase(q))
  vbd->discard_secure = 1;

 pr_debug("Successful creation of handle=%04x (dom=%u)\n",
  handle, blkif->domid);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thread; int pending_bios; } ;
struct pktcdvd_device {scalar_t__ pkt_dev; int name; TYPE_1__ cdrw; struct block_device* bdev; } ;
struct block_device {scalar_t__ bd_dev; } ;
typedef scalar_t__ dev_t ;


 int BDEVNAME_SIZE ;
 int CD_FRAMESIZE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int FMODE_NDELAY ;
 int FMODE_READ ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_WRITERS ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int atomic_set (int *,int ) ;
 int bdev_get_queue (struct block_device*) ;
 int bdevname (struct block_device*,char*) ;
 struct block_device* bdget (scalar_t__) ;
 int blk_queue_scsi_passthrough (int ) ;
 int blkdev_get (struct block_device*,int,int *) ;
 int blkdev_put (struct block_device*,int) ;
 int kcdrwd ;
 int kthread_run (int ,struct pktcdvd_device*,char*,int ) ;
 int module_put (int ) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,int ) ;
 struct pktcdvd_device** pkt_devs ;
 int pkt_err (struct pktcdvd_device*,char*,...) ;
 int pkt_init_queue (struct pktcdvd_device*) ;
 int pkt_proc ;
 int pkt_seq_show ;
 int proc_create_single_data (int ,int ,int ,int ,struct pktcdvd_device*) ;
 int set_blocksize (struct block_device*,int ) ;

__attribute__((used)) static int pkt_new_dev(struct pktcdvd_device *pd, dev_t dev)
{
 int i;
 int ret = 0;
 char b[BDEVNAME_SIZE];
 struct block_device *bdev;

 if (pd->pkt_dev == dev) {
  pkt_err(pd, "recursive setup not allowed\n");
  return -EBUSY;
 }
 for (i = 0; i < MAX_WRITERS; i++) {
  struct pktcdvd_device *pd2 = pkt_devs[i];
  if (!pd2)
   continue;
  if (pd2->bdev->bd_dev == dev) {
   pkt_err(pd, "%s already setup\n",
    bdevname(pd2->bdev, b));
   return -EBUSY;
  }
  if (pd2->pkt_dev == dev) {
   pkt_err(pd, "can't chain pktcdvd devices\n");
   return -EBUSY;
  }
 }

 bdev = bdget(dev);
 if (!bdev)
  return -ENOMEM;
 ret = blkdev_get(bdev, FMODE_READ | FMODE_NDELAY, ((void*)0));
 if (ret)
  return ret;
 if (!blk_queue_scsi_passthrough(bdev_get_queue(bdev))) {
  blkdev_put(bdev, FMODE_READ | FMODE_NDELAY);
  return -EINVAL;
 }


 __module_get(THIS_MODULE);

 pd->bdev = bdev;
 set_blocksize(bdev, CD_FRAMESIZE);

 pkt_init_queue(pd);

 atomic_set(&pd->cdrw.pending_bios, 0);
 pd->cdrw.thread = kthread_run(kcdrwd, pd, "%s", pd->name);
 if (IS_ERR(pd->cdrw.thread)) {
  pkt_err(pd, "can't start kernel thread\n");
  ret = -ENOMEM;
  goto out_mem;
 }

 proc_create_single_data(pd->name, 0, pkt_proc, pkt_seq_show, pd);
 pkt_dbg(1, pd, "writer mapped to %s\n", bdevname(bdev, b));
 return 0;

out_mem:
 blkdev_put(bdev, FMODE_READ | FMODE_NDELAY);

 module_put(THIS_MODULE);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; } ;
struct pktcdvd_device {scalar_t__ pkt_dev; scalar_t__ refcnt; int rb_pool; TYPE_2__* disk; int name; int bdev; TYPE_1__ cdrw; } ;
typedef scalar_t__ dev_t ;
struct TYPE_5__ {int queue; } ;


 int EBUSY ;
 int ENXIO ;
 int FMODE_NDELAY ;
 int FMODE_READ ;
 int IS_ERR (int ) ;
 int MAX_WRITERS ;
 int SINGLE_DEPTH_NESTING ;
 int THIS_MODULE ;
 int blk_cleanup_queue (int ) ;
 int blkdev_put (int ,int) ;
 int ctl_mutex ;
 int del_gendisk (TYPE_2__*) ;
 int kfree (struct pktcdvd_device*) ;
 int kthread_stop (int ) ;
 int mempool_exit (int *) ;
 int module_put (int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*) ;
 int pkt_debugfs_dev_remove (struct pktcdvd_device*) ;
 struct pktcdvd_device** pkt_devs ;
 int pkt_proc ;
 int pkt_sysfs_dev_remove (struct pktcdvd_device*) ;
 int pr_debug (char*) ;
 int put_disk (TYPE_2__*) ;
 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static int pkt_remove_dev(dev_t pkt_dev)
{
 struct pktcdvd_device *pd;
 int idx;
 int ret = 0;

 mutex_lock_nested(&ctl_mutex, SINGLE_DEPTH_NESTING);

 for (idx = 0; idx < MAX_WRITERS; idx++) {
  pd = pkt_devs[idx];
  if (pd && (pd->pkt_dev == pkt_dev))
   break;
 }
 if (idx == MAX_WRITERS) {
  pr_debug("dev not setup\n");
  ret = -ENXIO;
  goto out;
 }

 if (pd->refcnt > 0) {
  ret = -EBUSY;
  goto out;
 }
 if (!IS_ERR(pd->cdrw.thread))
  kthread_stop(pd->cdrw.thread);

 pkt_devs[idx] = ((void*)0);

 pkt_debugfs_dev_remove(pd);
 pkt_sysfs_dev_remove(pd);

 blkdev_put(pd->bdev, FMODE_READ | FMODE_NDELAY);

 remove_proc_entry(pd->name, pkt_proc);
 pkt_dbg(1, pd, "writer unmapped\n");

 del_gendisk(pd->disk);
 blk_cleanup_queue(pd->disk->queue);
 put_disk(pd->disk);

 mempool_exit(&pd->rb_pool);
 kfree(pd);


 module_put(THIS_MODULE);

out:
 mutex_unlock(&ctl_mutex);
 return ret;
}

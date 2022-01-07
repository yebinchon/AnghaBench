
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simdisk {scalar_t__ users; int fd; int lock; int * filename; TYPE_1__* gd; } ;
struct TYPE_2__ {int disk_name; } ;


 int EBUSY ;
 int EIO ;
 int errno ;
 int kfree (int *) ;
 int pr_err (char*,int *,int ) ;
 int pr_info (char*,int ,int *) ;
 scalar_t__ simc_close (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int simdisk_detach(struct simdisk *dev)
{
 int err = 0;

 spin_lock(&dev->lock);

 if (dev->users != 0) {
  err = -EBUSY;
 } else if (dev->fd != -1) {
  if (simc_close(dev->fd)) {
   pr_err("SIMDISK: error closing %s: %d\n",
     dev->filename, errno);
   err = -EIO;
  } else {
   pr_info("SIMDISK: %s detached from %s\n",
     dev->gd->disk_name, dev->filename);
   dev->fd = -1;
   kfree(dev->filename);
   dev->filename = ((void*)0);
  }
 }
 spin_unlock(&dev->lock);
 return err;
}

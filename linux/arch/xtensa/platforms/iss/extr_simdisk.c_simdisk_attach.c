
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simdisk {int fd; int size; char const* filename; int lock; TYPE_1__* gd; } ;
struct TYPE_2__ {int disk_name; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int O_RDWR ;
 int SECTOR_SHIFT ;
 int SEEK_END ;
 int errno ;
 int kfree (char const*) ;
 char* kstrdup (char const*,int ) ;
 int pr_err (char*,char const*,int ) ;
 int pr_info (char*,int ,char const*) ;
 int set_capacity (TYPE_1__*,int) ;
 int simc_lseek (int,int ,int ) ;
 int simc_open (char const*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int simdisk_attach(struct simdisk *dev, const char *filename)
{
 int err = 0;

 filename = kstrdup(filename, GFP_KERNEL);
 if (filename == ((void*)0))
  return -ENOMEM;

 spin_lock(&dev->lock);

 if (dev->fd != -1) {
  err = -EBUSY;
  goto out;
 }
 dev->fd = simc_open(filename, O_RDWR, 0);
 if (dev->fd == -1) {
  pr_err("SIMDISK: Can't open %s: %d\n", filename, errno);
  err = -ENODEV;
  goto out;
 }
 dev->size = simc_lseek(dev->fd, 0, SEEK_END);
 set_capacity(dev->gd, dev->size >> SECTOR_SHIFT);
 dev->filename = filename;
 pr_info("SIMDISK: %s=%s\n", dev->gd->disk_name, dev->filename);
out:
 if (err)
  kfree(filename);
 spin_unlock(&dev->lock);

 return err;
}

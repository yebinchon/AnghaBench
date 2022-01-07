
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
struct rbd_device {int major; int header_rwsem; int name; int flags; int dev_id; int dev; TYPE_2__* opts; int disk; TYPE_1__ mapping; scalar_t__ minor; } ;
struct TYPE_4__ {int read_only; } ;


 int RBD_DEV_FLAG_EXISTS ;
 int SECTOR_SIZE ;
 int dev_set_name (int *,char*,int ) ;
 scalar_t__ rbd_dev_id_to_minor (int ) ;
 int rbd_free_disk (struct rbd_device*) ;
 int rbd_init_disk (struct rbd_device*) ;
 int rbd_major ;
 int register_blkdev (int ,int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,int) ;
 int set_disk_ro (int ,int ) ;
 int single_major ;
 int unregister_blkdev (int,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int rbd_dev_device_setup(struct rbd_device *rbd_dev)
{
 int ret;



 if (!single_major) {
  ret = register_blkdev(0, rbd_dev->name);
  if (ret < 0)
   goto err_out_unlock;

  rbd_dev->major = ret;
  rbd_dev->minor = 0;
 } else {
  rbd_dev->major = rbd_major;
  rbd_dev->minor = rbd_dev_id_to_minor(rbd_dev->dev_id);
 }



 ret = rbd_init_disk(rbd_dev);
 if (ret)
  goto err_out_blkdev;

 set_capacity(rbd_dev->disk, rbd_dev->mapping.size / SECTOR_SIZE);
 set_disk_ro(rbd_dev->disk, rbd_dev->opts->read_only);

 ret = dev_set_name(&rbd_dev->dev, "%d", rbd_dev->dev_id);
 if (ret)
  goto err_out_disk;

 set_bit(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags);
 up_write(&rbd_dev->header_rwsem);
 return 0;

err_out_disk:
 rbd_free_disk(rbd_dev);
err_out_blkdev:
 if (!single_major)
  unregister_blkdev(rbd_dev->major, rbd_dev->name);
err_out_unlock:
 up_write(&rbd_dev->header_rwsem);
 return ret;
}

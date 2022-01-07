
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int name; int major; int flags; } ;


 int RBD_DEV_FLAG_EXISTS ;
 int clear_bit (int ,int *) ;
 int rbd_free_disk (struct rbd_device*) ;
 int single_major ;
 int unregister_blkdev (int ,int ) ;

__attribute__((used)) static void rbd_dev_device_release(struct rbd_device *rbd_dev)
{
 clear_bit(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags);
 rbd_free_disk(rbd_dev);
 if (!single_major)
  unregister_blkdev(rbd_dev->major, rbd_dev->name);
}

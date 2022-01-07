
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int lock_rwsem; } ;


 scalar_t__ __rbd_is_lock_owner (struct rbd_device*) ;
 int __rbd_release_lock (struct rbd_device*) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void rbd_dev_image_unlock(struct rbd_device *rbd_dev)
{
 down_write(&rbd_dev->lock_rwsem);
 if (__rbd_is_lock_owner(rbd_dev))
  __rbd_release_lock(rbd_dev);
 up_write(&rbd_dev->lock_rwsem);
}

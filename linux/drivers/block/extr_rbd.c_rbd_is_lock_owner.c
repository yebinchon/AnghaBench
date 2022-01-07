
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int lock_rwsem; } ;


 int __rbd_is_lock_owner (struct rbd_device*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static bool rbd_is_lock_owner(struct rbd_device *rbd_dev)
{
 bool is_lock_owner;

 down_read(&rbd_dev->lock_rwsem);
 is_lock_owner = __rbd_is_lock_owner(rbd_dev);
 up_read(&rbd_dev->lock_rwsem);
 return is_lock_owner;
}

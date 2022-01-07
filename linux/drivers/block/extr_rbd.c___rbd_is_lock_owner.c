
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {scalar_t__ lock_state; int lock_rwsem; } ;


 scalar_t__ RBD_LOCK_STATE_LOCKED ;
 scalar_t__ RBD_LOCK_STATE_RELEASING ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool __rbd_is_lock_owner(struct rbd_device *rbd_dev)
{
 lockdep_assert_held(&rbd_dev->lock_rwsem);

 return rbd_dev->lock_state == RBD_LOCK_STATE_LOCKED ||
        rbd_dev->lock_state == RBD_LOCK_STATE_RELEASING;
}

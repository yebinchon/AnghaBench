
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int lock_item; struct rbd_device* rbd_dev; } ;
struct rbd_device {scalar_t__ lock_state; int lock_lists_lock; int running_list; int acquiring_list; int lock_rwsem; } ;


 scalar_t__ RBD_LOCK_STATE_LOCKED ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int rbd_assert (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool rbd_lock_add_request(struct rbd_img_request *img_req)
{
 struct rbd_device *rbd_dev = img_req->rbd_dev;
 bool locked;

 lockdep_assert_held(&rbd_dev->lock_rwsem);
 locked = rbd_dev->lock_state == RBD_LOCK_STATE_LOCKED;
 spin_lock(&rbd_dev->lock_lists_lock);
 rbd_assert(list_empty(&img_req->lock_item));
 if (!locked)
  list_add_tail(&img_req->lock_item, &rbd_dev->acquiring_list);
 else
  list_add_tail(&img_req->lock_item, &rbd_dev->running_list);
 spin_unlock(&rbd_dev->lock_lists_lock);
 return locked;
}

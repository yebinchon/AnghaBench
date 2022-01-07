
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int lock_item; struct rbd_device* rbd_dev; } ;
struct rbd_device {scalar_t__ lock_state; int releasing_wait; int lock_lists_lock; int running_list; int lock_rwsem; } ;


 scalar_t__ RBD_LOCK_STATE_RELEASING ;
 int complete (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int rbd_assert (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rbd_lock_del_request(struct rbd_img_request *img_req)
{
 struct rbd_device *rbd_dev = img_req->rbd_dev;
 bool need_wakeup;

 lockdep_assert_held(&rbd_dev->lock_rwsem);
 spin_lock(&rbd_dev->lock_lists_lock);
 rbd_assert(!list_empty(&img_req->lock_item));
 list_del_init(&img_req->lock_item);
 need_wakeup = (rbd_dev->lock_state == RBD_LOCK_STATE_RELEASING &&
         list_empty(&rbd_dev->running_list));
 spin_unlock(&rbd_dev->lock_lists_lock);
 if (need_wakeup)
  complete(&rbd_dev->releasing_wait);
}

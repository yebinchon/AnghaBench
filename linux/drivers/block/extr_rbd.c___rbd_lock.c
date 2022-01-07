
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int acquired_lock_work; int task_wq; int lock_cookie; int lock_state; } ;
struct rbd_client_id {int dummy; } ;


 int RBD_LOCK_STATE_LOCKED ;
 int queue_work (int ,int *) ;
 struct rbd_client_id rbd_get_cid (struct rbd_device*) ;
 int rbd_set_owner_cid (struct rbd_device*,struct rbd_client_id*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void __rbd_lock(struct rbd_device *rbd_dev, const char *cookie)
{
 struct rbd_client_id cid = rbd_get_cid(rbd_dev);

 rbd_dev->lock_state = RBD_LOCK_STATE_LOCKED;
 strcpy(rbd_dev->lock_cookie, cookie);
 rbd_set_owner_cid(rbd_dev, &cid);
 queue_work(rbd_dev->task_wq, &rbd_dev->acquired_lock_work);
}

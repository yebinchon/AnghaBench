
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rbd_device {scalar_t__ watch_state; int watch_mutex; int watch_dwork; int task_wq; int lock_rwsem; } ;


 scalar_t__ RBD_WATCH_STATE_ERROR ;
 scalar_t__ RBD_WATCH_STATE_REGISTERED ;
 int __rbd_unregister_watch (struct rbd_device*) ;
 int down_write (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rbd_empty_cid ;
 int rbd_set_owner_cid (struct rbd_device*,int *) ;
 int rbd_warn (struct rbd_device*,char*,int) ;
 int up_write (int *) ;

__attribute__((used)) static void rbd_watch_errcb(void *arg, u64 cookie, int err)
{
 struct rbd_device *rbd_dev = arg;

 rbd_warn(rbd_dev, "encountered watch error: %d", err);

 down_write(&rbd_dev->lock_rwsem);
 rbd_set_owner_cid(rbd_dev, &rbd_empty_cid);
 up_write(&rbd_dev->lock_rwsem);

 mutex_lock(&rbd_dev->watch_mutex);
 if (rbd_dev->watch_state == RBD_WATCH_STATE_REGISTERED) {
  __rbd_unregister_watch(rbd_dev);
  rbd_dev->watch_state = RBD_WATCH_STATE_ERROR;

  queue_delayed_work(rbd_dev->task_wq, &rbd_dev->watch_dwork, 0);
 }
 mutex_unlock(&rbd_dev->watch_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {scalar_t__ watch_state; int watch_mutex; TYPE_1__* watch_handle; int watch_cookie; } ;
struct TYPE_2__ {int linger_id; } ;


 scalar_t__ RBD_WATCH_STATE_REGISTERED ;
 scalar_t__ RBD_WATCH_STATE_UNREGISTERED ;
 int __rbd_register_watch (struct rbd_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rbd_assert (int) ;

__attribute__((used)) static int rbd_register_watch(struct rbd_device *rbd_dev)
{
 int ret;

 mutex_lock(&rbd_dev->watch_mutex);
 rbd_assert(rbd_dev->watch_state == RBD_WATCH_STATE_UNREGISTERED);
 ret = __rbd_register_watch(rbd_dev);
 if (ret)
  goto out;

 rbd_dev->watch_state = RBD_WATCH_STATE_REGISTERED;
 rbd_dev->watch_cookie = rbd_dev->watch_handle->linger_id;

out:
 mutex_unlock(&rbd_dev->watch_mutex);
 return ret;
}

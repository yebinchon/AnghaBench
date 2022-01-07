
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {scalar_t__ watch_state; TYPE_2__* rbd_client; int watch_dwork; int watch_mutex; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {int osdc; } ;


 scalar_t__ RBD_WATCH_STATE_REGISTERED ;
 scalar_t__ RBD_WATCH_STATE_UNREGISTERED ;
 int __rbd_unregister_watch (struct rbd_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_tasks_sync (struct rbd_device*) ;
 int ceph_osdc_flush_notifies (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rbd_unregister_watch(struct rbd_device *rbd_dev)
{
 cancel_tasks_sync(rbd_dev);

 mutex_lock(&rbd_dev->watch_mutex);
 if (rbd_dev->watch_state == RBD_WATCH_STATE_REGISTERED)
  __rbd_unregister_watch(rbd_dev);
 rbd_dev->watch_state = RBD_WATCH_STATE_UNREGISTERED;
 mutex_unlock(&rbd_dev->watch_mutex);

 cancel_delayed_work_sync(&rbd_dev->watch_dwork);
 ceph_osdc_flush_notifies(&rbd_dev->rbd_client->client->osdc);
}

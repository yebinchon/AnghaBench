
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {int lock_dwork; int task_wq; int lock_cookie; int header_oloc; int header_oid; TYPE_2__* rbd_client; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int CEPH_CLS_LOCK_EXCLUSIVE ;
 int EOPNOTSUPP ;
 int RBD_LOCK_NAME ;
 int RBD_LOCK_TAG ;
 int __rbd_lock (struct rbd_device*,char*) ;
 int __rbd_release_lock (struct rbd_device*) ;
 int ceph_cls_set_cookie (struct ceph_osd_client*,int *,int *,int ,int ,int ,int ,char*) ;
 int format_lock_cookie (struct rbd_device*,char*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rbd_quiesce_lock (struct rbd_device*) ;
 int rbd_warn (struct rbd_device*,char*,int) ;
 int wake_lock_waiters (struct rbd_device*,int ) ;

__attribute__((used)) static void rbd_reacquire_lock(struct rbd_device *rbd_dev)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 char cookie[32];
 int ret;

 if (!rbd_quiesce_lock(rbd_dev))
  return;

 format_lock_cookie(rbd_dev, cookie);
 ret = ceph_cls_set_cookie(osdc, &rbd_dev->header_oid,
      &rbd_dev->header_oloc, RBD_LOCK_NAME,
      CEPH_CLS_LOCK_EXCLUSIVE, rbd_dev->lock_cookie,
      RBD_LOCK_TAG, cookie);
 if (ret) {
  if (ret != -EOPNOTSUPP)
   rbd_warn(rbd_dev, "failed to update lock cookie: %d",
     ret);





  __rbd_release_lock(rbd_dev);
  queue_delayed_work(rbd_dev->task_wq, &rbd_dev->lock_dwork, 0);
 } else {
  __rbd_lock(rbd_dev, cookie);
  wake_lock_waiters(rbd_dev, 0);
 }
}

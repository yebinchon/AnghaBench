
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {char* lock_cookie; int released_lock_work; int task_wq; int lock_state; int header_oloc; int header_oid; TYPE_2__* rbd_client; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int ENOENT ;
 int RBD_LOCK_NAME ;
 int RBD_LOCK_STATE_UNLOCKED ;
 int WARN_ON (int) ;
 int __rbd_is_lock_owner (struct rbd_device*) ;
 int ceph_cls_unlock (struct ceph_osd_client*,int *,int *,int ,char*) ;
 int queue_work (int ,int *) ;
 int rbd_empty_cid ;
 int rbd_set_owner_cid (struct rbd_device*,int *) ;
 int rbd_warn (struct rbd_device*,char*,int) ;

__attribute__((used)) static void rbd_unlock(struct rbd_device *rbd_dev)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 int ret;

 WARN_ON(!__rbd_is_lock_owner(rbd_dev) ||
  rbd_dev->lock_cookie[0] == '\0');

 ret = ceph_cls_unlock(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
         RBD_LOCK_NAME, rbd_dev->lock_cookie);
 if (ret && ret != -ENOENT)
  rbd_warn(rbd_dev, "failed to unlock header: %d", ret);


 rbd_dev->lock_state = RBD_LOCK_STATE_UNLOCKED;
 rbd_dev->lock_cookie[0] = '\0';
 rbd_set_owner_cid(rbd_dev, &rbd_empty_cid);
 queue_work(rbd_dev->task_wq, &rbd_dev->released_lock_work);
}

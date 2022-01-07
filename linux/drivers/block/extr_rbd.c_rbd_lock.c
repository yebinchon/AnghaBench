
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {char* lock_cookie; int header_oloc; int header_oid; TYPE_2__* rbd_client; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int CEPH_CLS_LOCK_EXCLUSIVE ;
 int RBD_LOCK_NAME ;
 int RBD_LOCK_TAG ;
 int WARN_ON (int) ;
 scalar_t__ __rbd_is_lock_owner (struct rbd_device*) ;
 int __rbd_lock (struct rbd_device*,char*) ;
 int ceph_cls_lock (struct ceph_osd_client*,int *,int *,int ,int ,char*,int ,char*,int ) ;
 int format_lock_cookie (struct rbd_device*,char*) ;

__attribute__((used)) static int rbd_lock(struct rbd_device *rbd_dev)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 char cookie[32];
 int ret;

 WARN_ON(__rbd_is_lock_owner(rbd_dev) ||
  rbd_dev->lock_cookie[0] != '\0');

 format_lock_cookie(rbd_dev, cookie);
 ret = ceph_cls_lock(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
       RBD_LOCK_NAME, CEPH_CLS_LOCK_EXCLUSIVE, cookie,
       RBD_LOCK_TAG, "", 0);
 if (ret)
  return ret;

 __rbd_lock(rbd_dev, cookie);
 return 0;
}

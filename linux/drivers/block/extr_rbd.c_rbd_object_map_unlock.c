
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {int header_oloc; TYPE_2__* rbd_client; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int CEPH_DEFINE_OID_ONSTACK (int ) ;
 int CEPH_NOSNAP ;
 int ENOENT ;
 int RBD_LOCK_NAME ;
 int ceph_cls_unlock (struct ceph_osd_client*,int *,int *,int ,char*) ;
 int oid ;
 int rbd_object_map_name (struct rbd_device*,int ,int *) ;
 int rbd_warn (struct rbd_device*,char*,int) ;

__attribute__((used)) static void rbd_object_map_unlock(struct rbd_device *rbd_dev)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 CEPH_DEFINE_OID_ONSTACK(oid);
 int ret;

 rbd_object_map_name(rbd_dev, CEPH_NOSNAP, &oid);

 ret = ceph_cls_unlock(osdc, &oid, &rbd_dev->header_oloc, RBD_LOCK_NAME,
         "");
 if (ret && ret != -ENOENT)
  rbd_warn(rbd_dev, "failed to unlock object map: %d", ret);
}

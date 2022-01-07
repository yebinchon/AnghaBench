
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rbd_device {TYPE_1__* spec; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_2__ {int image_id; } ;


 scalar_t__ CEPH_NOSNAP ;
 int RBD_OBJECT_MAP_PREFIX ;
 int ceph_oid_printf (struct ceph_object_id*,char*,int ,int ,...) ;

__attribute__((used)) static void rbd_object_map_name(struct rbd_device *rbd_dev, u64 snap_id,
    struct ceph_object_id *oid)
{
 if (snap_id == CEPH_NOSNAP)
  ceph_oid_printf(oid, "%s%s", RBD_OBJECT_MAP_PREFIX,
    rbd_dev->spec->image_id);
 else
  ceph_oid_printf(oid, "%s%s.%016llx", RBD_OBJECT_MAP_PREFIX,
    rbd_dev->spec->image_id, snap_id);
}

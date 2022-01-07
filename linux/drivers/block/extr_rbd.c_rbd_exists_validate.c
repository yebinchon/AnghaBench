
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rbd_device {int flags; TYPE_1__* spec; } ;
struct TYPE_2__ {scalar_t__ snap_id; } ;


 scalar_t__ BAD_SNAP_INDEX ;
 scalar_t__ CEPH_NOSNAP ;
 int RBD_DEV_FLAG_EXISTS ;
 int clear_bit (int ,int *) ;
 scalar_t__ rbd_dev_snap_index (struct rbd_device*,scalar_t__) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rbd_exists_validate(struct rbd_device *rbd_dev)
{
 u64 snap_id;

 if (!test_bit(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags))
  return;

 snap_id = rbd_dev->spec->snap_id;
 if (snap_id == CEPH_NOSNAP)
  return;

 if (rbd_dev_snap_index(rbd_dev, snap_id) == BAD_SNAP_INDEX)
  clear_bit(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags);
}

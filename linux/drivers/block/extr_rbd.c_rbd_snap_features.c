
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ features; } ;
struct rbd_device {int image_format; TYPE_1__ header; } ;


 scalar_t__ CEPH_NOSNAP ;
 int _rbd_dev_v2_snap_features (struct rbd_device*,scalar_t__,scalar_t__*) ;
 int rbd_assert (int ) ;
 int rbd_image_format_valid (int) ;

__attribute__((used)) static int rbd_snap_features(struct rbd_device *rbd_dev, u64 snap_id,
   u64 *snap_features)
{
 rbd_assert(rbd_image_format_valid(rbd_dev->image_format));
 if (snap_id == CEPH_NOSNAP) {
  *snap_features = rbd_dev->header.features;
 } else if (rbd_dev->image_format == 1) {
  *snap_features = 0;
 } else {
  u64 features = 0;
  int ret;

  ret = _rbd_dev_v2_snap_features(rbd_dev, snap_id, &features);
  if (ret)
   return ret;

  *snap_features = features;
 }
 return 0;
}

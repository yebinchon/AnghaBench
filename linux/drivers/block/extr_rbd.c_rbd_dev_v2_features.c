
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct rbd_device {TYPE_1__ header; } ;


 int CEPH_NOSNAP ;
 int _rbd_dev_v2_snap_features (struct rbd_device*,int ,int *) ;

__attribute__((used)) static int rbd_dev_v2_features(struct rbd_device *rbd_dev)
{
 return _rbd_dev_v2_snap_features(rbd_dev, CEPH_NOSNAP,
      &rbd_dev->header.features);
}

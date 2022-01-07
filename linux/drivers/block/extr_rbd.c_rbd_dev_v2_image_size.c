
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int image_size; int obj_order; } ;
struct rbd_device {TYPE_1__ header; } ;


 int CEPH_NOSNAP ;
 int _rbd_dev_v2_snap_size (struct rbd_device*,int ,int *,int *) ;

__attribute__((used)) static int rbd_dev_v2_image_size(struct rbd_device *rbd_dev)
{
 return _rbd_dev_v2_snap_size(rbd_dev, CEPH_NOSNAP,
     &rbd_dev->header.obj_order,
     &rbd_dev->header.image_size);
}

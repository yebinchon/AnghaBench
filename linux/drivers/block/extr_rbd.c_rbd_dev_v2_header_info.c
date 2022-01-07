
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * object_prefix; } ;
struct rbd_device {TYPE_1__ header; } ;


 int kfree (int *) ;
 int rbd_dev_v2_header_onetime (struct rbd_device*) ;
 int rbd_dev_v2_image_size (struct rbd_device*) ;
 int rbd_dev_v2_snap_context (struct rbd_device*) ;

__attribute__((used)) static int rbd_dev_v2_header_info(struct rbd_device *rbd_dev)
{
 bool first_time = rbd_dev->header.object_prefix == ((void*)0);
 int ret;

 ret = rbd_dev_v2_image_size(rbd_dev);
 if (ret)
  return ret;

 if (first_time) {
  ret = rbd_dev_v2_header_onetime(rbd_dev);
  if (ret)
   return ret;
 }

 ret = rbd_dev_v2_snap_context(rbd_dev);
 if (ret && first_time) {
  kfree(rbd_dev->header.object_prefix);
  rbd_dev->header.object_prefix = ((void*)0);
 }

 return ret;
}

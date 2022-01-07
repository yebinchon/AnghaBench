
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct rbd_device {TYPE_1__ header; } ;


 int RBD_FEATURE_OBJECT_MAP ;
 int rbd_object_map_open (struct rbd_device*) ;

__attribute__((used)) static int rbd_post_acquire_action(struct rbd_device *rbd_dev)
{
 int ret;

 if (rbd_dev->header.features & RBD_FEATURE_OBJECT_MAP) {
  ret = rbd_object_map_open(rbd_dev);
  if (ret)
   return ret;
 }

 return 0;
}

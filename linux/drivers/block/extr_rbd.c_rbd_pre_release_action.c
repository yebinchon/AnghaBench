
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct rbd_device {TYPE_1__ header; } ;


 int RBD_FEATURE_OBJECT_MAP ;
 int rbd_object_map_close (struct rbd_device*) ;

__attribute__((used)) static void rbd_pre_release_action(struct rbd_device *rbd_dev)
{
 if (rbd_dev->header.features & RBD_FEATURE_OBJECT_MAP)
  rbd_object_map_close(rbd_dev);
}

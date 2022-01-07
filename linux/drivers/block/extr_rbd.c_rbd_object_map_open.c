
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dummy; } ;


 int rbd_object_map_load (struct rbd_device*) ;
 int rbd_object_map_lock (struct rbd_device*) ;
 int rbd_object_map_unlock (struct rbd_device*) ;

__attribute__((used)) static int rbd_object_map_open(struct rbd_device *rbd_dev)
{
 int ret;

 ret = rbd_object_map_lock(rbd_dev);
 if (ret)
  return ret;

 ret = rbd_object_map_load(rbd_dev);
 if (ret) {
  rbd_object_map_unlock(rbd_dev);
  return ret;
 }

 return 0;
}

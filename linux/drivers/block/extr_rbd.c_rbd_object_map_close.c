
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dummy; } ;


 int rbd_object_map_free (struct rbd_device*) ;
 int rbd_object_map_unlock (struct rbd_device*) ;

__attribute__((used)) static void rbd_object_map_close(struct rbd_device *rbd_dev)
{
 rbd_object_map_free(rbd_dev);
 rbd_object_map_unlock(rbd_dev);
}

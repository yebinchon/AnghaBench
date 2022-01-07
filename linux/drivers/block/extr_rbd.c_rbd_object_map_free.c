
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {scalar_t__ object_map_size; int * object_map; } ;


 int kvfree (int *) ;

__attribute__((used)) static void rbd_object_map_free(struct rbd_device *rbd_dev)
{
 kvfree(rbd_dev->object_map);
 rbd_dev->object_map = ((void*)0);
 rbd_dev->object_map_size = 0;
}

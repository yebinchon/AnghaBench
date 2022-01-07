
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {scalar_t__ parent_overlap; int * parent_spec; } ;


 int rbd_dev_remove_parent (struct rbd_device*) ;
 int rbd_spec_put (int *) ;

__attribute__((used)) static void rbd_dev_unparent(struct rbd_device *rbd_dev)
{
 rbd_dev_remove_parent(rbd_dev);
 rbd_spec_put(rbd_dev->parent_spec);
 rbd_dev->parent_spec = ((void*)0);
 rbd_dev->parent_overlap = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {struct rbd_device* parent_spec; scalar_t__ parent_overlap; struct rbd_device* parent; } ;


 int rbd_assert (struct rbd_device*) ;
 int rbd_dev_destroy (struct rbd_device*) ;
 int rbd_dev_image_release (struct rbd_device*) ;
 int rbd_spec_put (struct rbd_device*) ;

__attribute__((used)) static void rbd_dev_remove_parent(struct rbd_device *rbd_dev)
{
 while (rbd_dev->parent) {
  struct rbd_device *first = rbd_dev;
  struct rbd_device *second = first->parent;
  struct rbd_device *third;





  while (second && (third = second->parent)) {
   first = second;
   second = third;
  }
  rbd_assert(second);
  rbd_dev_image_release(second);
  rbd_dev_destroy(second);
  first->parent = ((void*)0);
  first->parent_overlap = 0;

  rbd_assert(first->parent_spec);
  rbd_spec_put(first->parent_spec);
  first->parent_spec = ((void*)0);
 }
}

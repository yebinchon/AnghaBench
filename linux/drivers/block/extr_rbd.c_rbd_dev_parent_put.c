
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int parent_ref; int parent_spec; } ;


 int atomic_dec_return_safe (int *) ;
 int rbd_dev_unparent (struct rbd_device*) ;
 int rbd_warn (struct rbd_device*,char*) ;

__attribute__((used)) static void rbd_dev_parent_put(struct rbd_device *rbd_dev)
{
 int counter;

 if (!rbd_dev->parent_spec)
  return;

 counter = atomic_dec_return_safe(&rbd_dev->parent_ref);
 if (counter > 0)
  return;



 if (!counter)
  rbd_dev_unparent(rbd_dev);
 else
  rbd_warn(rbd_dev, "parent reference underflow");
}

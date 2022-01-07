
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int header_rwsem; int parent_ref; scalar_t__ parent_overlap; int parent_spec; } ;


 int atomic_inc_return_safe (int *) ;
 int down_read (int *) ;
 int rbd_warn (struct rbd_device*,char*) ;
 int up_read (int *) ;

__attribute__((used)) static bool rbd_dev_parent_get(struct rbd_device *rbd_dev)
{
 int counter = 0;

 if (!rbd_dev->parent_spec)
  return 0;

 down_read(&rbd_dev->header_rwsem);
 if (rbd_dev->parent_overlap)
  counter = atomic_inc_return_safe(&rbd_dev->parent_ref);
 up_read(&rbd_dev->header_rwsem);

 if (counter < 0)
  rbd_warn(rbd_dev, "parent reference overflow");

 return counter > 0;
}

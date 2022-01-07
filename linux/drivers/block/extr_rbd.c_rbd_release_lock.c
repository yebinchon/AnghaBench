
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int lock_dwork; } ;


 int __rbd_release_lock (struct rbd_device*) ;
 int cancel_delayed_work (int *) ;
 int rbd_quiesce_lock (struct rbd_device*) ;

__attribute__((used)) static void rbd_release_lock(struct rbd_device *rbd_dev)
{
 if (!rbd_quiesce_lock(rbd_dev))
  return;

 __rbd_release_lock(rbd_dev);
 cancel_delayed_work(&rbd_dev->lock_dwork);
}

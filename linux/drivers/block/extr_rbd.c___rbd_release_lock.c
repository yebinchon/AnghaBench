
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int running_list; } ;


 int list_empty (int *) ;
 int rbd_assert (int ) ;
 int rbd_pre_release_action (struct rbd_device*) ;
 int rbd_unlock (struct rbd_device*) ;

__attribute__((used)) static void __rbd_release_lock(struct rbd_device *rbd_dev)
{
 rbd_assert(list_empty(&rbd_dev->running_list));

 rbd_pre_release_action(rbd_dev);
 rbd_unlock(rbd_dev);
}

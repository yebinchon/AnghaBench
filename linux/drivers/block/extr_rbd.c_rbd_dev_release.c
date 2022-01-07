
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dev_id; int task_wq; int opts; } ;
struct device {int dummy; } ;


 int THIS_MODULE ;
 int destroy_workqueue (int ) ;
 struct rbd_device* dev_to_rbd_dev (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int module_put (int ) ;
 int rbd_dev_free (struct rbd_device*) ;
 int rbd_dev_id_ida ;

__attribute__((used)) static void rbd_dev_release(struct device *dev)
{
 struct rbd_device *rbd_dev = dev_to_rbd_dev(dev);
 bool need_put = !!rbd_dev->opts;

 if (need_put) {
  destroy_workqueue(rbd_dev->task_wq);
  ida_simple_remove(&rbd_dev_id_ida, rbd_dev->dev_id);
 }

 rbd_dev_free(rbd_dev);






 if (need_put)
  module_put(THIS_MODULE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writes; int worker; int wq; } ;
struct drbd_device {TYPE_1__ submit; int minor; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ,int ) ;
 int do_submit ;

__attribute__((used)) static int init_submitter(struct drbd_device *device)
{


 device->submit.wq =
  alloc_ordered_workqueue("drbd%u_submit", WQ_MEM_RECLAIM, device->minor);
 if (!device->submit.wq)
  return -ENOMEM;

 INIT_WORK(&device->submit.worker, do_submit);
 INIT_LIST_HEAD(&device->submit.writes);
 return 0;
}

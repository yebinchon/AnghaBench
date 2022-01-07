
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_work_queue {int dummy; } ;
struct TYPE_2__ {int cb; } ;
struct completion_work {int done; TYPE_1__ w; } ;


 int drbd_queue_work (struct drbd_work_queue*,TYPE_1__*) ;
 int init_completion (int *) ;
 int w_complete ;
 int wait_for_completion (int *) ;

void drbd_flush_workqueue(struct drbd_work_queue *work_queue)
{
 struct completion_work completion_work;

 completion_work.w.cb = w_complete;
 init_completion(&completion_work.done);
 drbd_queue_work(work_queue, &completion_work.w);
 wait_for_completion(&completion_work.done);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_3__ {int flags; int use_memdelay; struct request_queue* throttle_queue; } ;


 int PF_KTHREAD ;
 int blk_get_queue (struct request_queue*) ;
 int blk_put_queue (struct request_queue*) ;
 TYPE_1__* current ;
 int set_notify_resume (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

void blkcg_schedule_throttle(struct request_queue *q, bool use_memdelay)
{
 if (unlikely(current->flags & PF_KTHREAD))
  return;

 if (!blk_get_queue(q))
  return;

 if (current->throttle_queue)
  blk_put_queue(current->throttle_queue);
 current->throttle_queue = q;
 if (use_memdelay)
  current->use_memdelay = use_memdelay;
 set_notify_resume(current);
}

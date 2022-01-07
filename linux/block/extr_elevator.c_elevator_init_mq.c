
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int required_elevator_features; int elevator; int queue_flags; } ;
struct elevator_type {int elevator_name; } ;


 int QUEUE_FLAG_REGISTERED ;
 int WARN_ON_ONCE (int ) ;
 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_init_sched (struct request_queue*,struct elevator_type*) ;
 int blk_mq_quiesce_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;
 struct elevator_type* elevator_get_by_features (struct request_queue*) ;
 struct elevator_type* elevator_get_default (struct request_queue*) ;
 int elevator_put (struct elevator_type*) ;
 int elv_support_iosched (struct request_queue*) ;
 int pr_warn (char*,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

void elevator_init_mq(struct request_queue *q)
{
 struct elevator_type *e;
 int err;

 if (!elv_support_iosched(q))
  return;

 WARN_ON_ONCE(test_bit(QUEUE_FLAG_REGISTERED, &q->queue_flags));

 if (unlikely(q->elevator))
  return;

 if (!q->required_elevator_features)
  e = elevator_get_default(q);
 else
  e = elevator_get_by_features(q);
 if (!e)
  return;

 blk_mq_freeze_queue(q);
 blk_mq_quiesce_queue(q);

 err = blk_mq_init_sched(q, e);

 blk_mq_unquiesce_queue(q);
 blk_mq_unfreeze_queue(q);

 if (err) {
  pr_warn("\"%s\" elevator initialization failed, "
   "falling back to \"none\"\n", e->elevator_name);
  elevator_put(e);
 }
}

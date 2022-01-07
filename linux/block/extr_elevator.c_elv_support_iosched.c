
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* tag_set; int mq_ops; } ;
struct TYPE_2__ {int flags; } ;


 int BLK_MQ_F_NO_SCHED ;

__attribute__((used)) static inline bool elv_support_iosched(struct request_queue *q)
{
 if (!q->mq_ops ||
     (q->tag_set && (q->tag_set->flags & BLK_MQ_F_NO_SCHED)))
  return 0;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int rq_flags; TYPE_1__* q; } ;
struct TYPE_2__ {scalar_t__ elevator; } ;


 int RQF_IO_STAT ;
 int RQF_STATS ;

__attribute__((used)) static inline bool blk_mq_need_time_stamp(struct request *rq)
{
 return (rq->rq_flags & (RQF_IO_STAT | RQF_STATS)) || rq->q->elevator;
}

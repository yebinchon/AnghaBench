
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rq_depth {int max_depth; int scale_step; } ;
struct TYPE_4__ {TYPE_1__* q; } ;
struct rq_wb {int wb_normal; int wb_background; int cur_win_nsec; struct rq_depth rq_depth; TYPE_2__ rqos; } ;
struct backing_dev_info {int dummy; } ;
struct TYPE_3__ {struct backing_dev_info* backing_dev_info; } ;


 int trace_wbt_step (struct backing_dev_info*,char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void rwb_trace_step(struct rq_wb *rwb, const char *msg)
{
 struct backing_dev_info *bdi = rwb->rqos.q->backing_dev_info;
 struct rq_depth *rqd = &rwb->rq_depth;

 trace_wbt_step(bdi, msg, rqd->scale_step, rwb->cur_win_nsec,
   rwb->wb_background, rwb->wb_normal, rqd->max_depth);
}

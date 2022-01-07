
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_wait {int dummy; } ;
struct TYPE_2__ {int max_depth; } ;
struct iolatency_grp {TYPE_1__ rq_depth; } ;


 int rq_wait_inc_below (struct rq_wait*,int ) ;

__attribute__((used)) static bool iolat_acquire_inflight(struct rq_wait *rqw, void *private_data)
{
 struct iolatency_grp *iolat = private_data;
 return rq_wait_inc_below(rqw, iolat->rq_depth.max_depth);
}

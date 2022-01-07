
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wait {int inflight; } ;


 int atomic_inc_below (int *,unsigned int) ;

bool rq_wait_inc_below(struct rq_wait *rq_wait, unsigned int limit)
{
 return atomic_inc_below(&rq_wait->inflight, limit);
}

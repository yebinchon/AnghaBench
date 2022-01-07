
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wait {int wait; int inflight; } ;


 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static inline void rq_wait_init(struct rq_wait *rq_wait)
{
 atomic_set(&rq_wait->inflight, 0);
 init_waitqueue_head(&rq_wait->wait);
}

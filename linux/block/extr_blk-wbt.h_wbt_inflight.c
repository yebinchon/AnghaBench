
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_wb {TYPE_1__* rq_wait; } ;
struct TYPE_2__ {int inflight; } ;


 unsigned int WBT_NUM_RWQ ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline unsigned int wbt_inflight(struct rq_wb *rwb)
{
 unsigned int i, ret = 0;

 for (i = 0; i < WBT_NUM_RWQ; i++)
  ret += atomic_read(&rwb->rq_wait[i].inflight);

 return ret;
}

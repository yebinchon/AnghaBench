
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_depth; } ;
struct rq_wb {unsigned int wb_background; unsigned int wb_normal; TYPE_1__ rq_depth; } ;


 unsigned long REQ_BACKGROUND ;
 unsigned long REQ_HIPRIO ;
 unsigned long REQ_OP_DISCARD ;
 unsigned long REQ_OP_MASK ;
 unsigned int UINT_MAX ;
 scalar_t__ close_io (struct rq_wb*) ;
 scalar_t__ current_is_kswapd () ;
 int rwb_enabled (struct rq_wb*) ;
 scalar_t__ wb_recent_wait (struct rq_wb*) ;

__attribute__((used)) static inline unsigned int get_limit(struct rq_wb *rwb, unsigned long rw)
{
 unsigned int limit;





 if (!rwb_enabled(rwb))
  return UINT_MAX;

 if ((rw & REQ_OP_MASK) == REQ_OP_DISCARD)
  return rwb->wb_background;
 if ((rw & REQ_HIPRIO) || wb_recent_wait(rwb) || current_is_kswapd())
  limit = rwb->rq_depth.max_depth;
 else if ((rw & REQ_BACKGROUND) || close_io(rwb)) {




  limit = rwb->wb_background;
 } else
  limit = rwb->wb_normal;

 return limit;
}

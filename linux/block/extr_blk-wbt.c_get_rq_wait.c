
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {struct rq_wait* rq_wait; } ;
struct rq_wait {int dummy; } ;
typedef enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;


 int WBT_DISCARD ;
 int WBT_KSWAPD ;
 size_t WBT_RWQ_BG ;
 size_t WBT_RWQ_DISCARD ;
 size_t WBT_RWQ_KSWAPD ;

__attribute__((used)) static inline struct rq_wait *get_rq_wait(struct rq_wb *rwb,
       enum wbt_flags wb_acct)
{
 if (wb_acct & WBT_KSWAPD)
  return &rwb->rq_wait[WBT_RWQ_KSWAPD];
 else if (wb_acct & WBT_DISCARD)
  return &rwb->rq_wait[WBT_RWQ_DISCARD];

 return &rwb->rq_wait[WBT_RWQ_BG];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int state; } ;
typedef enum mq_rq_state { ____Placeholder_mq_rq_state } mq_rq_state ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline enum mq_rq_state blk_mq_rq_state(struct request *rq)
{
 return READ_ONCE(rq->state);
}

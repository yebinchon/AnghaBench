
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* mq_ctx; int cmd_flags; } ;
struct kyber_queue_data {int * domain_tokens; } ;
struct TYPE_2__ {int cpu; } ;


 unsigned int kyber_sched_domain (int ) ;
 int rq_get_domain_token (struct request*) ;
 int sbitmap_queue_clear (int *,int,int ) ;

__attribute__((used)) static void rq_clear_domain_token(struct kyber_queue_data *kqd,
      struct request *rq)
{
 unsigned int sched_domain;
 int nr;

 nr = rq_get_domain_token(rq);
 if (nr != -1) {
  sched_domain = kyber_sched_domain(rq->cmd_flags);
  sbitmap_queue_clear(&kqd->domain_tokens[sched_domain], nr,
        rq->mq_ctx->cpu);
 }
}

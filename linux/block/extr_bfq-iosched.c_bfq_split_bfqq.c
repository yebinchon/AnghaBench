
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfq_queue {int pid; int bfqd; } ;
struct bfq_io_cq {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int bfq_clear_bfqq_coop (struct bfq_queue*) ;
 int bfq_clear_bfqq_split_coop (struct bfq_queue*) ;
 int bfq_log_bfqq (int ,struct bfq_queue*,char*) ;
 int bfq_put_cooperator (struct bfq_queue*) ;
 int bfq_put_queue (struct bfq_queue*) ;
 int bfqq_process_refs (struct bfq_queue*) ;
 int bic_set_bfqq (struct bfq_io_cq*,int *,int) ;
 TYPE_1__* current ;

__attribute__((used)) static struct bfq_queue *
bfq_split_bfqq(struct bfq_io_cq *bic, struct bfq_queue *bfqq)
{
 bfq_log_bfqq(bfqq->bfqd, bfqq, "splitting queue");

 if (bfqq_process_refs(bfqq) == 1) {
  bfqq->pid = current->pid;
  bfq_clear_bfqq_coop(bfqq);
  bfq_clear_bfqq_split_coop(bfqq);
  return bfqq;
 }

 bic_set_bfqq(bic, ((void*)0), 1);

 bfq_put_cooperator(bfqq);

 bfq_put_queue(bfqq);
 return ((void*)0);
}

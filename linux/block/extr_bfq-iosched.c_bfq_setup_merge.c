
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int ref; struct bfq_queue* new_bfqq; int pid; int bfqd; } ;


 int bfq_log_bfqq (int ,struct bfq_queue*,char*,int ) ;
 int bfqq_process_refs (struct bfq_queue*) ;

__attribute__((used)) static struct bfq_queue *
bfq_setup_merge(struct bfq_queue *bfqq, struct bfq_queue *new_bfqq)
{
 int process_refs, new_process_refs;
 struct bfq_queue *__bfqq;







 if (!bfqq_process_refs(new_bfqq))
  return ((void*)0);


 while ((__bfqq = new_bfqq->new_bfqq)) {
  if (__bfqq == bfqq)
   return ((void*)0);
  new_bfqq = __bfqq;
 }

 process_refs = bfqq_process_refs(bfqq);
 new_process_refs = bfqq_process_refs(new_bfqq);




 if (process_refs == 0 || new_process_refs == 0)
  return ((void*)0);

 bfq_log_bfqq(bfqq->bfqd, bfqq, "scheduling merge with queue %d",
  new_bfqq->pid);
 bfqq->new_bfqq = new_bfqq;
 new_bfqq->ref += process_refs;
 return new_bfqq;
}

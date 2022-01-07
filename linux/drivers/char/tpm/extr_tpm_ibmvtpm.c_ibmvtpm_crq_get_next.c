
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvtpm_crq_queue {size_t index; size_t num_entry; struct ibmvtpm_crq* crq_addr; } ;
struct ibmvtpm_dev {struct ibmvtpm_crq_queue crq_queue; } ;
struct ibmvtpm_crq {int valid; } ;


 int VTPM_MSG_RES ;
 int smp_rmb () ;

__attribute__((used)) static struct ibmvtpm_crq *ibmvtpm_crq_get_next(struct ibmvtpm_dev *ibmvtpm)
{
 struct ibmvtpm_crq_queue *crq_q = &ibmvtpm->crq_queue;
 struct ibmvtpm_crq *crq = &crq_q->crq_addr[crq_q->index];

 if (crq->valid & VTPM_MSG_RES) {
  if (++crq_q->index == crq_q->num_entry)
   crq_q->index = 0;
  smp_rmb();
 } else
  crq = ((void*)0);
 return crq;
}

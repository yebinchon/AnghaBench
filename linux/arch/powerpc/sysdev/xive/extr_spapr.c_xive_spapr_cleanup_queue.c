
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xive_q {int * qpage; } ;
struct xive_cpu {struct xive_q* queue; } ;


 int free_pages (unsigned long,unsigned int) ;
 int get_hard_smp_processor_id (unsigned int) ;
 long plpar_int_set_queue_config (int ,int,size_t,int ,int ) ;
 int pr_err (char*,long,int,size_t) ;
 unsigned int xive_alloc_order (int ) ;
 int xive_queue_shift ;

__attribute__((used)) static void xive_spapr_cleanup_queue(unsigned int cpu, struct xive_cpu *xc,
      u8 prio)
{
 struct xive_q *q = &xc->queue[prio];
 unsigned int alloc_order;
 long rc;
 int hw_cpu = get_hard_smp_processor_id(cpu);

 rc = plpar_int_set_queue_config(0, hw_cpu, prio, 0, 0);
 if (rc)
  pr_err("Error %ld setting queue for CPU %d prio %d\n", rc,
         hw_cpu, prio);

 alloc_order = xive_alloc_order(xive_queue_shift);
 free_pages((unsigned long)q->qpage, alloc_order);
 q->qpage = ((void*)0);
}

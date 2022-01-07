
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xive_q {int * qpage; } ;
struct xive_cpu {struct xive_q* queue; } ;


 int __xive_native_disable_queue (int ,struct xive_q*,size_t) ;
 int free_pages (unsigned long,unsigned int) ;
 int get_hard_smp_processor_id (unsigned int) ;
 unsigned int xive_alloc_order (int ) ;
 int xive_queue_shift ;

__attribute__((used)) static void xive_native_cleanup_queue(unsigned int cpu, struct xive_cpu *xc, u8 prio)
{
 struct xive_q *q = &xc->queue[prio];
 unsigned int alloc_order;





 __xive_native_disable_queue(get_hard_smp_processor_id(cpu), q, prio);
 alloc_order = xive_alloc_order(xive_queue_shift);
 free_pages((unsigned long)q->qpage, alloc_order);
 q->qpage = ((void*)0);
}

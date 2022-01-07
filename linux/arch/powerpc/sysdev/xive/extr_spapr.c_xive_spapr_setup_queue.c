
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xive_q {int dummy; } ;
struct xive_cpu {struct xive_q* queue; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int get_hard_smp_processor_id (unsigned int) ;
 int * xive_queue_page_alloc (unsigned int,int ) ;
 int xive_queue_shift ;
 int xive_spapr_configure_queue (int ,struct xive_q*,size_t,int *,int ) ;

__attribute__((used)) static int xive_spapr_setup_queue(unsigned int cpu, struct xive_cpu *xc,
      u8 prio)
{
 struct xive_q *q = &xc->queue[prio];
 __be32 *qpage;

 qpage = xive_queue_page_alloc(cpu, xive_queue_shift);
 if (IS_ERR(qpage))
  return PTR_ERR(qpage);

 return xive_spapr_configure_queue(get_hard_smp_processor_id(cpu),
       q, prio, qpage, xive_queue_shift);
}

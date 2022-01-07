
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct xive_q {int count; int pending_count; } ;
struct xive_cpu {int pending_prio; size_t cppr; struct xive_q* queue; } ;


 int DBG_VERBOSE (char*,size_t) ;
 scalar_t__ TM_CPPR ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int atomic_xchg (int *,int ) ;
 size_t ffs (int) ;
 scalar_t__ irq_to_desc (scalar_t__) ;
 int out_8 (scalar_t__,size_t) ;
 int pr_crit (char*,scalar_t__) ;
 scalar_t__ xive_read_eq (struct xive_q*,int) ;
 scalar_t__ xive_tima ;
 scalar_t__ xive_tima_offset ;

__attribute__((used)) static u32 xive_scan_interrupts(struct xive_cpu *xc, bool just_peek)
{
 u32 irq = 0;
 u8 prio = 0;


 while (xc->pending_prio != 0) {
  struct xive_q *q;

  prio = ffs(xc->pending_prio) - 1;
  DBG_VERBOSE("scan_irq: trying prio %d\n", prio);


  irq = xive_read_eq(&xc->queue[prio], just_peek);


  if (irq) {
   if (just_peek || irq_to_desc(irq))
    break;





   pr_crit("xive: got interrupt %d without descriptor, dropping\n",
    irq);
   WARN_ON(1);
   continue;
  }


  xc->pending_prio &= ~(1 << prio);






  q = &xc->queue[prio];
  if (atomic_read(&q->pending_count)) {
   int p = atomic_xchg(&q->pending_count, 0);
   if (p) {
    WARN_ON(p > atomic_read(&q->count));
    atomic_sub(p, &q->count);
   }
  }
 }


 if (irq == 0)
  prio = 0xff;


 if (prio != xc->cppr) {
  DBG_VERBOSE("scan_irq: adjusting CPPR to %d\n", prio);
  xc->cppr = prio;
  out_8(xive_tima + xive_tima_offset + TM_CPPR, prio);
 }

 return irq;
}

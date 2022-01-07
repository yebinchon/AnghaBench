
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xive_q {scalar_t__ idx; scalar_t__ toggle; int msk; int qpage; } ;
struct kvmppc_xive {int dummy; } ;


 scalar_t__ XICS_IPI ;
 scalar_t__ __xive_read_eq (int ,int ,scalar_t__*,scalar_t__*) ;
 int xive_pre_save_set_queued (struct kvmppc_xive*,scalar_t__) ;

__attribute__((used)) static void xive_pre_save_queue(struct kvmppc_xive *xive, struct xive_q *q)
{
 u32 idx = q->idx;
 u32 toggle = q->toggle;
 u32 irq;

 do {
  irq = __xive_read_eq(q->qpage, q->msk, &idx, &toggle);
  if (irq > XICS_IPI)
   xive_pre_save_set_queued(xive, irq);
 } while(irq);
}

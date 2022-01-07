
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int atomic_t ;


 scalar_t__ READ_ONCE (scalar_t__) ;
 int __this_cpu_read (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 scalar_t__ in_nmi () ;
 int lock_kicker_irq ;
 int * this_cpu_ptr (int *) ;
 int xen_clear_irq_pending (int) ;
 int xen_poll_irq (int) ;
 int xen_qlock_wait_nest ;
 scalar_t__ xen_test_irq_pending (int) ;

__attribute__((used)) static void xen_qlock_wait(u8 *byte, u8 val)
{
 int irq = __this_cpu_read(lock_kicker_irq);
 atomic_t *nest_cnt = this_cpu_ptr(&xen_qlock_wait_nest);


 if (irq == -1 || in_nmi())
  return;


 atomic_inc(nest_cnt);


 if (atomic_read(nest_cnt) == 1 && xen_test_irq_pending(irq)) {
  xen_clear_irq_pending(irq);
 } else if (READ_ONCE(*byte) == val) {

  xen_poll_irq(irq);
 }

 atomic_dec(nest_cnt);
}

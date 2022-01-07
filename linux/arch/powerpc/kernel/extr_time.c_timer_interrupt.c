
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
struct TYPE_2__ {int timer_irqs_others; int timer_irqs_event; } ;


 int CONFIG_PPC_WATCHDOG ;
 scalar_t__ IS_ENABLED (int ) ;
 int __this_cpu_inc (int ) ;
 scalar_t__ atomic_read (int *) ;
 int clear_irq_work_pending () ;
 int cpu_online (int ) ;
 int decrementer_max ;
 int decrementers ;
 int decrementers_next_tb ;
 int do_IRQ (struct pt_regs*) ;
 int get_tb_or_rtc () ;
 int irq_enter () ;
 int irq_exit () ;
 TYPE_1__ irq_stat ;
 int irq_work_run () ;
 int may_hard_irq_enable () ;
 int ppc_n_lost_interrupts ;
 int set_dec (int) ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int smp_processor_id () ;
 int stub1 (struct clock_event_device*) ;
 scalar_t__ test_irq_work_pending () ;
 void* this_cpu_ptr (int *) ;
 int trace_timer_interrupt_entry (struct pt_regs*) ;
 int trace_timer_interrupt_exit (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;

void timer_interrupt(struct pt_regs *regs)
{
 struct clock_event_device *evt = this_cpu_ptr(&decrementers);
 u64 *next_tb = this_cpu_ptr(&decrementers_next_tb);
 struct pt_regs *old_regs;
 u64 now;







 if (unlikely(!cpu_online(smp_processor_id()))) {
  *next_tb = ~(u64)0;
  set_dec(decrementer_max);
  return;
 }







 if (IS_ENABLED(CONFIG_PPC_WATCHDOG))
  set_dec(0x7fffffff);
 else
  set_dec(decrementer_max);




 may_hard_irq_enable();







 old_regs = set_irq_regs(regs);
 irq_enter();
 trace_timer_interrupt_entry(regs);

 if (test_irq_work_pending()) {
  clear_irq_work_pending();
  irq_work_run();
 }

 now = get_tb_or_rtc();
 if (now >= *next_tb) {
  *next_tb = ~(u64)0;
  if (evt->event_handler)
   evt->event_handler(evt);
  __this_cpu_inc(irq_stat.timer_irqs_event);
 } else {
  now = *next_tb - now;
  if (now <= decrementer_max)
   set_dec(now);

  if (test_irq_work_pending())
   set_dec(1);
  __this_cpu_inc(irq_stat.timer_irqs_others);
 }

 trace_timer_interrupt_exit(regs);
 irq_exit();
 set_irq_regs(old_regs);
}

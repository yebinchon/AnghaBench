
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;


 int TIMER_IRQ ;
 scalar_t__ TT_MODE_BASIC ;
 int do_IRQ (int ,struct uml_pt_regs*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ time_travel_mode ;
 int time_travel_set_time (int ) ;
 int time_travel_timer_expiry ;

void timer_handler(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
 unsigned long flags;
 if (time_travel_mode == TT_MODE_BASIC)
  time_travel_set_time(time_travel_timer_expiry);

 local_irq_save(flags);
 do_IRQ(TIMER_IRQ, regs);
 local_irq_restore(flags);
}

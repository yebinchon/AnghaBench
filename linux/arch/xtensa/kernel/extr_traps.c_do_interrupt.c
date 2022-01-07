
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int LOCKLEVEL ;







 int __ffs (unsigned int) ;
 int do_IRQ (int ,struct pt_regs*) ;
 unsigned int intenable ;
 int interrupt ;
 int irq_enter () ;
 int irq_exit () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int trace_hardirqs_off () ;
 unsigned int xtensa_get_sr (int ) ;

void do_interrupt(struct pt_regs *regs)
{
 static const unsigned int_level_mask[] = {
  0,
  134,
  133,
  132,
  131,
  130,
  129,
  128,
 };
 struct pt_regs *old_regs;

 trace_hardirqs_off();

 old_regs = set_irq_regs(regs);
 irq_enter();

 for (;;) {
  unsigned intread = xtensa_get_sr(interrupt);
  unsigned intenable = xtensa_get_sr(intenable);
  unsigned int_at_level = intread & intenable;
  unsigned level;

  for (level = LOCKLEVEL; level > 0; --level) {
   if (int_at_level & int_level_mask[level]) {
    int_at_level &= int_level_mask[level];
    break;
   }
  }

  if (level == 0)
   break;

  do_IRQ(__ffs(int_at_level), regs);
 }

 irq_exit();
 set_irq_regs(old_regs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cs; int ip; } ;
struct mce {scalar_t__ finished; int cs; int ip; } ;


 int do_machine_check (struct pt_regs*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memset (struct pt_regs*,int ,int) ;

__attribute__((used)) static void raise_exception(struct mce *m, struct pt_regs *pregs)
{
 struct pt_regs regs;
 unsigned long flags;

 if (!pregs) {
  memset(&regs, 0, sizeof(struct pt_regs));
  regs.ip = m->ip;
  regs.cs = m->cs;
  pregs = &regs;
 }

 local_irq_save(flags);
 do_machine_check(pregs, 0);
 local_irq_restore(flags);
 m->finished = 0;
}

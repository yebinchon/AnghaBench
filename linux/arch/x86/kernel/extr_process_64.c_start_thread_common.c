
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ip; unsigned long sp; unsigned int cs; unsigned int ss; int flags; } ;


 int WARN_ON_ONCE (int) ;
 int X86_BUG_NULL_SEG ;
 int X86_EFLAGS_IF ;
 unsigned int __USER_DS ;
 struct pt_regs* current_pt_regs () ;
 int ds ;
 int es ;
 int force_iret () ;
 int fs ;
 int load_gs_index (unsigned int) ;
 int loadsegment (int ,unsigned int) ;
 scalar_t__ static_cpu_has (int ) ;

__attribute__((used)) static void
start_thread_common(struct pt_regs *regs, unsigned long new_ip,
      unsigned long new_sp,
      unsigned int _cs, unsigned int _ss, unsigned int _ds)
{
 WARN_ON_ONCE(regs != current_pt_regs());

 if (static_cpu_has(X86_BUG_NULL_SEG)) {

  loadsegment(fs, __USER_DS);
  load_gs_index(__USER_DS);
 }

 loadsegment(fs, 0);
 loadsegment(es, _ds);
 loadsegment(ds, _ds);
 load_gs_index(0);

 regs->ip = new_ip;
 regs->sp = new_sp;
 regs->cs = _cs;
 regs->ss = _ss;
 regs->flags = X86_EFLAGS_IF;
 force_iret();
}

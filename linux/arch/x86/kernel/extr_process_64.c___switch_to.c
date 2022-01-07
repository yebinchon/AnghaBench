
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu {int dummy; } ;
struct thread_struct {unsigned short es; unsigned short ds; scalar_t__ iopl; struct fpu fpu; } ;
struct task_struct {struct thread_struct thread; } ;


 int CONFIG_DEBUG_ENTRY ;
 scalar_t__ IS_ENABLED (int ) ;
 int TIF_NEED_FPU_LOAD ;
 int WARN_ON_ONCE (int) ;
 int X86_BUG_SYSRET_SS_ATTRS ;
 int X86_FEATURE_XENPV ;
 unsigned short __KERNEL_DS ;
 int arch_end_context_switch (struct task_struct*) ;
 int cpu_current_top_of_stack ;
 int current_task ;
 int ds ;
 int es ;
 int irq_count ;
 int load_TLS (struct thread_struct*,int) ;
 int loadsegment (int ,unsigned short) ;
 int resctrl_sched_in () ;
 int save_fsgs (struct task_struct*) ;
 int savesegment (int ,unsigned short) ;
 int smp_processor_id () ;
 int ss ;
 scalar_t__ static_cpu_has (int ) ;
 scalar_t__ static_cpu_has_bug (int ) ;
 int switch_fpu_finish (struct fpu*) ;
 int switch_fpu_prepare (struct fpu*,int) ;
 int switch_to_extra (struct task_struct*,struct task_struct*) ;
 struct task_struct* task_top_of_stack (struct task_struct*) ;
 int test_thread_flag (int ) ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int update_task_stack (struct task_struct*) ;
 int x86_fsgsbase_load (struct thread_struct*,struct thread_struct*) ;
 int xen_set_iopl_mask (scalar_t__) ;

struct task_struct *
__switch_to(struct task_struct *prev_p, struct task_struct *next_p)
{
 struct thread_struct *prev = &prev_p->thread;
 struct thread_struct *next = &next_p->thread;
 struct fpu *prev_fpu = &prev->fpu;
 struct fpu *next_fpu = &next->fpu;
 int cpu = smp_processor_id();

 WARN_ON_ONCE(IS_ENABLED(CONFIG_DEBUG_ENTRY) &&
       this_cpu_read(irq_count) != -1);

 if (!test_thread_flag(TIF_NEED_FPU_LOAD))
  switch_fpu_prepare(prev_fpu, cpu);






 save_fsgs(prev_p);





 load_TLS(next, cpu);






 arch_end_context_switch(next_p);
 savesegment(es, prev->es);
 if (unlikely(next->es | prev->es))
  loadsegment(es, next->es);

 savesegment(ds, prev->ds);
 if (unlikely(next->ds | prev->ds))
  loadsegment(ds, next->ds);

 x86_fsgsbase_load(prev, next);




 this_cpu_write(current_task, next_p);
 this_cpu_write(cpu_current_top_of_stack, task_top_of_stack(next_p));

 switch_fpu_finish(next_fpu);


 update_task_stack(next_p);

 switch_to_extra(prev_p, next_p);
 if (static_cpu_has_bug(X86_BUG_SYSRET_SS_ATTRS)) {
  unsigned short ss_sel;
  savesegment(ss, ss_sel);
  if (ss_sel != __KERNEL_DS)
   loadsegment(ss, __KERNEL_DS);
 }


 resctrl_sched_in();

 return prev_p;
}

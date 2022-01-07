
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu {int dummy; } ;
struct thread_struct {int gs; scalar_t__ iopl; struct fpu fpu; } ;
struct task_struct {struct thread_struct thread; } ;


 struct task_struct* THREAD_SIZE ;
 int TIF_NEED_FPU_LOAD ;
 int arch_end_context_switch (struct task_struct*) ;
 int cpu_current_top_of_stack ;
 int current_task ;
 scalar_t__ get_kernel_rpl () ;
 int lazy_load_gs (int) ;
 int lazy_save_gs (int) ;
 int load_TLS (struct thread_struct*,int) ;
 int refresh_sysenter_cs (struct thread_struct*) ;
 int resctrl_sched_in () ;
 int set_iopl_mask (scalar_t__) ;
 int smp_processor_id () ;
 int switch_fpu_finish (struct fpu*) ;
 int switch_fpu_prepare (struct fpu*,int) ;
 int switch_to_extra (struct task_struct*,struct task_struct*) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 int test_thread_flag (int ) ;
 int this_cpu_write (int ,struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int update_task_stack (struct task_struct*) ;

struct task_struct *
__switch_to(struct task_struct *prev_p, struct task_struct *next_p)
{
 struct thread_struct *prev = &prev_p->thread,
        *next = &next_p->thread;
 struct fpu *prev_fpu = &prev->fpu;
 struct fpu *next_fpu = &next->fpu;
 int cpu = smp_processor_id();



 if (!test_thread_flag(TIF_NEED_FPU_LOAD))
  switch_fpu_prepare(prev_fpu, cpu);
 lazy_save_gs(prev->gs);




 load_TLS(next, cpu);







 if (get_kernel_rpl() && unlikely(prev->iopl != next->iopl))
  set_iopl_mask(next->iopl);

 switch_to_extra(prev_p, next_p);






 arch_end_context_switch(next_p);






 update_task_stack(next_p);
 refresh_sysenter_cs(next);
 this_cpu_write(cpu_current_top_of_stack,
         (unsigned long)task_stack_page(next_p) +
         THREAD_SIZE);




 if (prev->gs | next->gs)
  lazy_load_gs(next->gs);

 this_cpu_write(current_task, next_p);

 switch_fpu_finish(next_fpu);


 resctrl_sched_in();

 return prev_p;
}

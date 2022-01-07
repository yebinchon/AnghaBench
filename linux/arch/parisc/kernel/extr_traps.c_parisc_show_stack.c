
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int do_show_stack (struct unwind_frame_info*) ;
 int unwind_frame_init_task (struct unwind_frame_info*,struct task_struct*,struct pt_regs*) ;

__attribute__((used)) static void parisc_show_stack(struct task_struct *task,
 struct pt_regs *regs)
{
 struct unwind_frame_info info;

 unwind_frame_init_task(&info, task, regs);

 do_show_stack(&info);
}

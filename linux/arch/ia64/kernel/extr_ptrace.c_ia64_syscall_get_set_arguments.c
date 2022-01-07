
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufi ;
struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct syscall_get_set_args {int n; unsigned long* args; int rw; struct pt_regs* regs; int i; } ;
struct pt_regs {int dummy; } ;


 struct task_struct* current ;
 int memset (struct unw_frame_info*,int ,int) ;
 int syscall_get_set_args_cb (struct unw_frame_info*,struct syscall_get_set_args*) ;
 int unw_init_from_blocked_task (struct unw_frame_info*,struct task_struct*) ;
 int unw_init_running (int (*) (struct unw_frame_info*,struct syscall_get_set_args*),struct syscall_get_set_args*) ;

void ia64_syscall_get_set_arguments(struct task_struct *task,
 struct pt_regs *regs, unsigned long *args, int rw)
{
 struct syscall_get_set_args data = {
  .i = 0,
  .n = 6,
  .args = args,
  .regs = regs,
  .rw = rw,
 };

 if (task == current)
  unw_init_running(syscall_get_set_args_cb, &data);
 else {
  struct unw_frame_info ufi;
  memset(&ufi, 0, sizeof(ufi));
  unw_init_from_blocked_task(&ufi, task);
  syscall_get_set_args_cb(&ufi, &data);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unw_frame_info {int dummy; } ;
struct TYPE_2__ {int flags; int fph; } ;
struct task_struct {TYPE_1__ thread; } ;
typedef int elf_fpregset_t ;
typedef int elf_fpreg_t ;


 int IA64_THREAD_FPH_VALID ;
 int ia64_flush_fph (struct task_struct*) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int unw_get_fr (struct unw_frame_info*,int,int *) ;
 scalar_t__ unw_unwind_to_user (struct unw_frame_info*) ;

void
do_dump_task_fpu (struct task_struct *task, struct unw_frame_info *info, void *arg)
{
 elf_fpreg_t *dst = arg;
 int i;

 memset(dst, 0, sizeof(elf_fpregset_t));

 if (unw_unwind_to_user(info) < 0)
  return;



 for (i = 2; i < 32; ++i)
  unw_get_fr(info, i, dst + i);

 ia64_flush_fph(task);
 if ((task->thread.flags & IA64_THREAD_FPH_VALID) != 0)
  memcpy(dst + 32, task->thread.fph, 96*16);
}

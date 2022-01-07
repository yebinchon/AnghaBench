
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sve_state; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_4__ {scalar_t__ mm; } ;


 int BUILD_BUG_ON (int) ;
 int CONFIG_THREAD_INFO_IN_TASK ;
 int IS_ENABLED (int ) ;
 int TIF_SVE ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 TYPE_2__* current ;
 int fpsimd_preserve_current_state () ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{
 if (current->mm)
  fpsimd_preserve_current_state();
 *dst = *src;


 BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
 dst->thread.sve_state = ((void*)0);
 clear_tsk_thread_flag(dst, TIF_SVE);

 return 0;
}

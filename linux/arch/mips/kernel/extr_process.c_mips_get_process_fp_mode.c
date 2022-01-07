
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PR_FP_MODE_FR ;
 int PR_FP_MODE_FRE ;
 int TIF_32BIT_FPREGS ;
 int TIF_HYBRID_FPREGS ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

int mips_get_process_fp_mode(struct task_struct *task)
{
 int value = 0;

 if (!test_tsk_thread_flag(task, TIF_32BIT_FPREGS))
  value |= PR_FP_MODE_FR;
 if (test_tsk_thread_flag(task, TIF_HYBRID_FPREGS))
  value |= PR_FP_MODE_FRE;

 return value;
}

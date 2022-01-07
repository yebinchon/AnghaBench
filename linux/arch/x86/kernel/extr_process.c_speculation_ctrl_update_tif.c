
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;


 int TIF_SPEC_FORCE_UPDATE ;
 int TIF_SPEC_IB ;
 int TIF_SSBD ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ task_spec_ib_disable (struct task_struct*) ;
 scalar_t__ task_spec_ssb_disable (struct task_struct*) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 scalar_t__ test_and_clear_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static unsigned long speculation_ctrl_update_tif(struct task_struct *tsk)
{
 if (test_and_clear_tsk_thread_flag(tsk, TIF_SPEC_FORCE_UPDATE)) {
  if (task_spec_ssb_disable(tsk))
   set_tsk_thread_flag(tsk, TIF_SSBD);
  else
   clear_tsk_thread_flag(tsk, TIF_SSBD);

  if (task_spec_ib_disable(tsk))
   set_tsk_thread_flag(tsk, TIF_SPEC_IB);
  else
   clear_tsk_thread_flag(tsk, TIF_SPEC_IB);
 }

 return task_thread_info(tsk)->flags;
}

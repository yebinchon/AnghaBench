
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bd_emu_frame; } ;
struct task_struct {scalar_t__ mm; TYPE_1__ thread; } ;


 int BD_EMUFRAME_NONE ;
 int atomic_xchg (int *,int) ;
 int free_emuframe (int,scalar_t__) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

bool dsemul_thread_cleanup(struct task_struct *tsk)
{
 int fr_idx;


 fr_idx = atomic_xchg(&tsk->thread.bd_emu_frame, BD_EMUFRAME_NONE);


 if (fr_idx == BD_EMUFRAME_NONE)
  return 0;

 task_lock(tsk);


 if (tsk->mm)
  free_emuframe(fr_idx, tsk->mm);

 task_unlock(tsk);
 return 1;
}

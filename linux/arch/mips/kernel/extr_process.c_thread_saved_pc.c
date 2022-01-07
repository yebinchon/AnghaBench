
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_struct {unsigned long reg31; scalar_t__ reg29; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_2__ {size_t pc_offset; } ;


 scalar_t__ ret_from_fork ;
 TYPE_1__ schedule_mfi ;

__attribute__((used)) static unsigned long thread_saved_pc(struct task_struct *tsk)
{
 struct thread_struct *t = &tsk->thread;


 if (t->reg31 == (unsigned long) ret_from_fork)
  return t->reg31;
 if (schedule_mfi.pc_offset < 0)
  return 0;
 return ((unsigned long *)t->reg29)[schedule_mfi.pc_offset];
}

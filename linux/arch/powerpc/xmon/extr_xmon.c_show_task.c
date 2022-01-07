
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ksp; } ;
struct task_struct {char state; int exit_state; int comm; int parent; int pid; TYPE_1__ thread; } ;
struct TYPE_4__ {int pid; } ;


 int EXIT_DEAD ;
 int EXIT_ZOMBIE ;
 char TASK_INTERRUPTIBLE ;
 char TASK_STOPPED ;
 char TASK_TRACED ;
 char TASK_UNINTERRUPTIBLE ;
 int printf (char*,struct task_struct*,int ,int ,int ,char,int ,int ) ;
 TYPE_2__* rcu_dereference (int ) ;
 int task_cpu (struct task_struct*) ;

__attribute__((used)) static void show_task(struct task_struct *tsk)
{
 char state;






 state = (tsk->state == 0) ? 'R' :
  (tsk->state < 0) ? 'U' :
  (tsk->state & TASK_UNINTERRUPTIBLE) ? 'D' :
  (tsk->state & TASK_STOPPED) ? 'T' :
  (tsk->state & TASK_TRACED) ? 'C' :
  (tsk->exit_state & EXIT_ZOMBIE) ? 'Z' :
  (tsk->exit_state & EXIT_DEAD) ? 'E' :
  (tsk->state & TASK_INTERRUPTIBLE) ? 'S' : '?';

 printf("%px %016lx %6d %6d %c %2d %s\n", tsk,
  tsk->thread.ksp,
  tsk->pid, rcu_dereference(tsk->parent)->pid,
  state, task_cpu(tsk),
  tsk->comm);
}

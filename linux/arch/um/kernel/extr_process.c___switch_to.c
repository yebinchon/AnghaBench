
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int switch_buf; struct task_struct* prev_sched; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_6__ {void* prev_sched; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;


 int arch_switch_to (TYPE_3__*) ;
 TYPE_3__* current ;
 int set_current (struct task_struct*) ;
 int switch_threads (int *,int *) ;

void *__switch_to(struct task_struct *from, struct task_struct *to)
{
 to->thread.prev_sched = from;
 set_current(to);

 switch_threads(&from->thread.switch_buf, &to->thread.switch_buf);
 arch_switch_to(current);

 return current->thread.prev_sched;
}

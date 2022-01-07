
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long gsbase; } ;
struct task_struct {TYPE_1__ thread; } ;


 int WARN_ON_ONCE (int) ;
 struct task_struct* current ;

void x86_gsbase_write_task(struct task_struct *task, unsigned long gsbase)
{
 WARN_ON_ONCE(task == current);

 task->thread.gsbase = gsbase;
}

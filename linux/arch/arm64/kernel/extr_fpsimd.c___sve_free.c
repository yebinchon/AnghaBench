
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sve_state; } ;
struct task_struct {TYPE_1__ thread; } ;


 int kfree (int *) ;

__attribute__((used)) static void __sve_free(struct task_struct *task)
{
 kfree(task->thread.sve_state);
 task->thread.sve_state = ((void*)0);
}

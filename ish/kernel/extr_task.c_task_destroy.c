
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {int pid; int siblings; } ;
struct TYPE_2__ {int * task; } ;


 int free (struct task*) ;
 int list_remove (int *) ;
 TYPE_1__* pid_get (int ) ;

void task_destroy(struct task *task) {
    list_remove(&task->siblings);
    pid_get(task->pid)->task = ((void*)0);
    free(task);
}

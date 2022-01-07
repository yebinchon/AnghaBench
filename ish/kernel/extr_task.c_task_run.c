
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu; } ;


 int cpu_run (int *) ;
 TYPE_1__* current ;
 int die (char*) ;
 int task_run_hook () ;

__attribute__((used)) static void *task_run(void *task) {
    current = task;
    if (task_run_hook)
        task_run_hook();
    else
        cpu_run(&current->cpu);
    die("task_run returned");
}

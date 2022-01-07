
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;


 scalar_t__ IS_ERR (struct task*) ;
 int PTR_ERR (struct task*) ;
 struct task* construct_task (int *) ;
 struct task* current ;
 int establish_signal_handlers () ;

int become_first_process() {

    establish_signal_handlers();

    struct task *task = construct_task(((void*)0));
    if (IS_ERR(task))
        return PTR_ERR(task);

    current = task;
    return 0;
}

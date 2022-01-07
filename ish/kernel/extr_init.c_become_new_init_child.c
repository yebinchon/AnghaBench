
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int queue; scalar_t__ waiting; scalar_t__ pending; scalar_t__ blocked; int * vfork; scalar_t__ clear_tid; } ;


 scalar_t__ IS_ERR (struct task*) ;
 int PTR_ERR (struct task*) ;
 int assert (int ) ;
 struct task* construct_task (struct task*) ;
 struct task* current ;
 int list_init (int *) ;
 struct task* pid_get_task (int) ;

int become_new_init_child() {

    struct task *init = pid_get_task(1);
    assert(init != ((void*)0));

    struct task *task = construct_task(init);
    if (IS_ERR(task))
        return PTR_ERR(task);


    task->clear_tid = 0;
    task->vfork = ((void*)0);
    task->blocked = task->pending = task->waiting = 0;
    list_init(&task->queue);


    current = task;
    return 0;
}

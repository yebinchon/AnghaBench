
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int thread; } ;


 int die (char*) ;
 scalar_t__ pthread_create (int *,int *,int ,struct task*) ;
 int task_run ;
 int task_thread_attr ;

void task_start(struct task *task) {
    if (pthread_create(&task->thread, &task_thread_attr, task_run, task) < 0)
        die("could not create thread");
}

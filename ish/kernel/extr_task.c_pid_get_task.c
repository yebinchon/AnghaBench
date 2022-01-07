
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {scalar_t__ zombie; } ;
typedef int dword_t ;


 struct task* pid_get_task_zombie (int ) ;

struct task *pid_get_task(dword_t id) {
    struct task *task = pid_get_task_zombie(id);
    if (task != ((void*)0) && task->zombie)
        return ((void*)0);
    return task;
}

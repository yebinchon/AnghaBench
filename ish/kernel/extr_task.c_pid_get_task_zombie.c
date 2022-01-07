
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct pid {struct task* task; } ;
typedef int dword_t ;


 struct pid* pid_get (int ) ;

struct task *pid_get_task_zombie(dword_t id) {
    struct pid *pid = pid_get(id);
    if (pid == ((void*)0))
        return ((void*)0);
    struct task *task = pid->task;
    return task;
}

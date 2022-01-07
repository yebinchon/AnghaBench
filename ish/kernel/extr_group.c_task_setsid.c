
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tgroup {scalar_t__ pgid; scalar_t__ sid; int pgroup; int session; TYPE_1__* leader; } ;
struct task {int pid; struct tgroup* group; } ;
struct pid {int pgroup; int session; } ;
typedef scalar_t__ pid_t_ ;
struct TYPE_2__ {scalar_t__ pid; } ;


 scalar_t__ _EPERM ;
 int list_add (int *,int *) ;
 int list_remove_safe (int *) ;
 int lock (int *) ;
 struct pid* pid_get (int ) ;
 int pids_lock ;
 int task_leave_session (struct task*) ;
 int unlock (int *) ;

pid_t_ task_setsid(struct task *task) {
    lock(&pids_lock);
    struct tgroup *group = task->group;
    pid_t_ new_sid = group->leader->pid;
    if (group->pgid == new_sid || group->sid == new_sid) {
        unlock(&pids_lock);
        return _EPERM;
    }

    task_leave_session(task);
    struct pid *pid = pid_get(task->pid);
    list_add(&pid->session, &group->session);
    group->sid = new_sid;

    list_remove_safe(&group->pgroup);
    list_add(&pid->pgroup, &group->pgroup);
    group->pgid = new_sid;

    unlock(&pids_lock);
    return new_sid;
}

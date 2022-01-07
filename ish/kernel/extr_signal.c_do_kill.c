
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task {scalar_t__ tgid; } ;
struct TYPE_4__ {int uid; int pid; } ;
struct siginfo_ {TYPE_1__ kill; int code; } ;
typedef scalar_t__ pid_t_ ;
typedef int dword_t ;
struct TYPE_6__ {TYPE_2__* group; int uid; int pid; } ;
struct TYPE_5__ {scalar_t__ pgid; } ;


 int NUM_SIGS ;
 int SI_USER_ ;
 int STRACE (char*,scalar_t__,int ) ;
 int _EINVAL ;
 int _ESRCH ;
 TYPE_3__* current ;
 int lock (int *) ;
 struct task* pid_get_task (scalar_t__) ;
 int pids_lock ;
 int send_group_signal (scalar_t__,int ,struct siginfo_) ;
 int send_signal (struct task*,int ,struct siginfo_) ;
 int unlock (int *) ;

int do_kill(pid_t_ pid, dword_t sig, pid_t_ tgid) {
    STRACE("kill(%d, %d)", pid, sig);
    if (sig >= NUM_SIGS)
        return _EINVAL;
    struct siginfo_ info = {
        .code = SI_USER_,
        .kill.pid = current->pid,
        .kill.uid = current->uid,
    };

    if (pid == 0)
        pid = -current->group->pgid;
    if (pid < 0)
        return send_group_signal(-pid, sig, info);

    lock(&pids_lock);
    struct task *task = pid_get_task(pid);
    if (task == ((void*)0)) {
        unlock(&pids_lock);
        return _ESRCH;
    }


    if (tgid != 0 && task->tgid != tgid) {
        unlock(&pids_lock);
        return _ESRCH;
    }

    send_signal(task, sig, info);
    unlock(&pids_lock);
    return 0;
}

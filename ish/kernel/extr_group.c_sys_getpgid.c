
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t_ ;
struct TYPE_4__ {scalar_t__ pid; TYPE_1__* group; } ;
struct TYPE_3__ {scalar_t__ pgid; } ;


 int STRACE (char*,scalar_t__) ;
 scalar_t__ _EPERM ;
 TYPE_2__* current ;
 int lock (int *) ;
 int pids_lock ;
 int unlock (int *) ;

pid_t_ sys_getpgid(pid_t_ pid) {
    STRACE("getpgid(%d)", pid);
    if (pid != 0 && pid != current->pid)
        return _EPERM;
    lock(&pids_lock);
    pid_t_ pgid = current->group->pgid;
    unlock(&pids_lock);
    return pgid;
}

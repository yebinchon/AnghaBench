
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t_ ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {scalar_t__ pid; } ;


 int STRACE (char*) ;
 TYPE_2__* current ;
 int lock (int *) ;
 int pids_lock ;
 int unlock (int *) ;

pid_t_ sys_getppid() {
    STRACE("getppid()");
    pid_t_ ppid;
    lock(&pids_lock);
    if (current->parent != ((void*)0))
        ppid = current->parent->pid;
    else
        ppid = 0;
    unlock(&pids_lock);
    return ppid;
}

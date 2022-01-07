
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t_ ;
typedef int dword_t ;
struct TYPE_4__ {TYPE_1__* group; } ;
struct TYPE_3__ {int sid; } ;


 int STRACE (char*) ;
 TYPE_2__* current ;
 int lock (int *) ;
 int pids_lock ;
 int unlock (int *) ;

dword_t sys_getsid() {
    STRACE("getsid()");
    lock(&pids_lock);
    pid_t_ sid = current->group->sid;
    unlock(&pids_lock);
    return sid;
}

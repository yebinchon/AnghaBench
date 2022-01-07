
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t_ ;
struct TYPE_2__ {int pid; } ;


 int STRACE (char*) ;
 TYPE_1__* current ;

pid_t_ sys_gettid() {
    STRACE("gettid()");
    return current->pid;
}

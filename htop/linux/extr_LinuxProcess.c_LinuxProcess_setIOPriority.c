
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pid; } ;
struct TYPE_6__ {TYPE_1__ super; } ;
typedef TYPE_2__ LinuxProcess ;
typedef scalar_t__ IOPriority ;


 int IOPRIO_WHO_PROCESS ;
 scalar_t__ LinuxProcess_updateIOPriority (TYPE_2__*) ;
 int SYS_ioprio_set ;
 int syscall (int ,int ,int ,scalar_t__) ;

bool LinuxProcess_setIOPriority(LinuxProcess* this, IOPriority ioprio) {




   return (LinuxProcess_updateIOPriority(this) == ioprio);
}

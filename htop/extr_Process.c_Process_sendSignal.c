
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
typedef TYPE_1__ Process ;


 int CRT_dropPrivileges () ;
 int CRT_restorePrivileges () ;
 int kill (int ,int) ;

void Process_sendSignal(Process* this, int sgn) {
   CRT_dropPrivileges();
   kill(this->pid, (int) sgn);
   CRT_restorePrivileges();
}

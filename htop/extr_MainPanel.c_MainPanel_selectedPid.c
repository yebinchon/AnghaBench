
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
typedef TYPE_1__ Process ;
typedef int Panel ;
typedef int MainPanel ;


 scalar_t__ Panel_getSelected (int *) ;

int MainPanel_selectedPid(MainPanel* this) {
   Process* p = (Process*) Panel_getSelected((Panel*)this);
   if (p) {
      return p->pid;
   }
   return -1;
}

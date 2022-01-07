
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ pid; int showChildren; } ;
typedef TYPE_1__ Process ;
typedef int Panel ;


 scalar_t__ Panel_get (int *,int) ;
 scalar_t__ Panel_getSelected (int *) ;
 int Panel_setSelected (int *,int) ;
 int Panel_size (int *) ;
 scalar_t__ Process_getParentPid (TYPE_1__*) ;

__attribute__((used)) static bool collapseIntoParent(Panel* panel) {
   Process* p = (Process*) Panel_getSelected(panel);
   if (!p) return 0;
   pid_t ppid = Process_getParentPid(p);
   for (int i = 0; i < Panel_size(panel); i++) {
      Process* q = (Process*) Panel_get(panel, i);
      if (q->pid == ppid) {
         q->showChildren = 0;
         Panel_setSelected(panel, i);
         return 1;
      }
   }
   return 0;
}

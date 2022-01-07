
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {int tag; int pid; } ;
typedef TYPE_1__ Process ;
typedef int Panel ;


 scalar_t__ Panel_get (int *,int) ;
 int Panel_size (int *) ;
 scalar_t__ Process_isChildOf (TYPE_1__*,int ) ;

__attribute__((used)) static void tagAllChildren(Panel* panel, Process* parent) {
   parent->tag = 1;
   pid_t ppid = parent->pid;
   for (int i = 0; i < Panel_size(panel); i++) {
      Process* p = (Process*) Panel_get(panel, i);
      if (!p->tag && Process_isChildOf(p, ppid)) {
         tagAllChildren(panel, p);
      }
   }
}

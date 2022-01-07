
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int showChildren; } ;
typedef TYPE_1__ Process ;
typedef int Panel ;


 scalar_t__ Panel_getSelected (int *) ;

__attribute__((used)) static bool expandCollapse(Panel* panel) {
   Process* p = (Process*) Panel_getSelected(panel);
   if (!p) return 0;
   p->showChildren = !p->showChildren;
   return 1;
}

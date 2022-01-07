
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ panel; } ;
typedef TYPE_1__ State ;
typedef int MainPanel ;
typedef int Htop_Reaction ;


 int HTOP_OK ;
 int HTOP_REFRESH ;
 int changePriority (int *,int) ;

__attribute__((used)) static Htop_Reaction actionLowerPriority(State* st) {
   bool changed = changePriority((MainPanel*)st->panel, 1);
   return changed ? HTOP_REFRESH : HTOP_OK;
}

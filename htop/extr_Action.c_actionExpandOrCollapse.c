
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panel; } ;
typedef TYPE_1__ State ;
typedef int Htop_Reaction ;


 int HTOP_OK ;
 int HTOP_RECALCULATE ;
 int expandCollapse (int ) ;

__attribute__((used)) static Htop_Reaction actionExpandOrCollapse(State* st) {
   bool changed = expandCollapse(st->panel);
   return changed ? HTOP_RECALCULATE : HTOP_OK;
}

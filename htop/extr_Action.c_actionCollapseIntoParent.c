
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int panel; TYPE_1__* settings; } ;
struct TYPE_4__ {int treeView; } ;
typedef TYPE_2__ State ;
typedef int Htop_Reaction ;


 int HTOP_OK ;
 int HTOP_RECALCULATE ;
 int collapseIntoParent (int ) ;

__attribute__((used)) static Htop_Reaction actionCollapseIntoParent(State* st) {
   if (!st->settings->treeView) {
      return HTOP_OK;
   }
   bool changed = collapseIntoParent(st->panel);
   return changed ? HTOP_RECALCULATE : HTOP_OK;
}

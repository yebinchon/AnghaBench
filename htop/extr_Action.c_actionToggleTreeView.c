
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pl; TYPE_1__* settings; } ;
struct TYPE_4__ {int treeView; int direction; } ;
typedef TYPE_2__ State ;
typedef int Htop_Reaction ;


 int HTOP_KEEP_FOLLOWING ;
 int HTOP_REDRAW_BAR ;
 int HTOP_REFRESH ;
 int HTOP_SAVE_SETTINGS ;
 int HTOP_UPDATE_PANELHDR ;
 int ProcessList_expandTree (int ) ;

__attribute__((used)) static Htop_Reaction actionToggleTreeView(State* st) {
   st->settings->treeView = !st->settings->treeView;
   if (st->settings->treeView) st->settings->direction = 1;
   ProcessList_expandTree(st->pl);
   return HTOP_REFRESH | HTOP_SAVE_SETTINGS | HTOP_KEEP_FOLLOWING | HTOP_REDRAW_BAR | HTOP_UPDATE_PANELHDR;
}

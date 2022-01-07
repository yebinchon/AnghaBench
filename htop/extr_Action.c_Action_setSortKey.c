
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direction; int treeView; int sortKey; } ;
typedef TYPE_1__ Settings ;
typedef int ProcessField ;
typedef int Htop_Reaction ;


 int HTOP_KEEP_FOLLOWING ;
 int HTOP_REFRESH ;
 int HTOP_SAVE_SETTINGS ;
 int HTOP_UPDATE_PANELHDR ;

Htop_Reaction Action_setSortKey(Settings* settings, ProcessField sortKey) {
   settings->sortKey = sortKey;
   settings->direction = 1;
   settings->treeView = 0;
   return HTOP_REFRESH | HTOP_SAVE_SETTINGS | HTOP_UPDATE_PANELHDR | HTOP_KEEP_FOLLOWING;
}

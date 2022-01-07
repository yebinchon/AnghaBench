
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* settings; } ;
struct TYPE_6__ {scalar_t__ treeView; } ;
typedef TYPE_2__ State ;
typedef int Htop_Reaction ;


 int actionExpandOrCollapse (TYPE_2__*) ;
 int actionSetSortColumn (TYPE_2__*) ;

__attribute__((used)) static Htop_Reaction actionExpandCollapseOrSortColumn(State* st) {
   return st->settings->treeView ? actionExpandOrCollapse(st) : actionSetSortColumn(st);
}

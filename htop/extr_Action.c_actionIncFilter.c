
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * inc; } ;
struct TYPE_6__ {TYPE_1__* pl; scalar_t__ panel; } ;
struct TYPE_5__ {int incFilter; } ;
typedef TYPE_2__ State ;
typedef TYPE_3__ MainPanel ;
typedef int IncSet ;
typedef int Htop_Reaction ;


 int HTOP_KEEP_FOLLOWING ;
 int HTOP_REFRESH ;
 int INC_FILTER ;
 int IncSet_activate (int *,int ,scalar_t__) ;
 int IncSet_filter (int *) ;

__attribute__((used)) static Htop_Reaction actionIncFilter(State* st) {
   IncSet* inc = ((MainPanel*)st->panel)->inc;
   IncSet_activate(inc, INC_FILTER, st->panel);
   st->pl->incFilter = IncSet_filter(inc);
   return HTOP_REFRESH | HTOP_KEEP_FOLLOWING;
}

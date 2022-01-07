
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inc; } ;
struct TYPE_4__ {scalar_t__ panel; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ MainPanel ;
typedef int Htop_Reaction ;


 int HTOP_KEEP_FOLLOWING ;
 int HTOP_REFRESH ;
 int INC_SEARCH ;
 int IncSet_activate (int ,int ,scalar_t__) ;

__attribute__((used)) static Htop_Reaction actionIncSearch(State* st) {
   IncSet_activate(((MainPanel*)st->panel)->inc, INC_SEARCH, st->panel);
   return HTOP_REFRESH | HTOP_KEEP_FOLLOWING;
}

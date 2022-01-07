
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tag; } ;
struct TYPE_4__ {int panel; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Process ;
typedef int Htop_Reaction ;


 int HTOP_REFRESH ;
 scalar_t__ Panel_get (int ,int) ;
 int Panel_size (int ) ;

__attribute__((used)) static Htop_Reaction actionUntagAll(State* st) {
   for (int i = 0; i < Panel_size(st->panel); i++) {
      Process* p = (Process*) Panel_get(st->panel, i);
      p->tag = 0;
   }
   return HTOP_REFRESH;
}

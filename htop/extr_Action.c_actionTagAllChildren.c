
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panel; } ;
typedef TYPE_1__ State ;
typedef int Process ;
typedef int Htop_Reaction ;


 int HTOP_OK ;
 scalar_t__ Panel_getSelected (int ) ;
 int tagAllChildren (int ,int *) ;

__attribute__((used)) static Htop_Reaction actionTagAllChildren(State* st) {
   Process* p = (Process*) Panel_getSelected(st->panel);
   if (!p) return HTOP_OK;
   tagAllChildren(st->panel, p);
   return HTOP_OK;
}

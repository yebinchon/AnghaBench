
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
 int KEY_DOWN ;
 scalar_t__ Panel_getSelected (int ) ;
 int Panel_onKey (int ,int ) ;
 int Process_toggleTag (int *) ;

__attribute__((used)) static Htop_Reaction actionTag(State* st) {
   Process* p = (Process*) Panel_getSelected(st->panel);
   if (!p) return HTOP_OK;
   Process_toggleTag(p);
   Panel_onKey(st->panel, KEY_DOWN);
   return HTOP_OK;
}

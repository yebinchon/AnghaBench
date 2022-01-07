
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panel; } ;
typedef TYPE_1__ State ;
typedef int Process ;
typedef int Object ;
typedef int InfoScreen ;
typedef int Htop_Reaction ;
typedef int EnvScreen ;


 int CRT_enableDelay () ;
 int EnvScreen_delete (int *) ;
 int * EnvScreen_new (int *) ;
 int HTOP_OK ;
 int HTOP_REDRAW_BAR ;
 int HTOP_REFRESH ;
 int InfoScreen_run (int *) ;
 scalar_t__ Panel_getSelected (int ) ;
 int clear () ;

__attribute__((used)) static Htop_Reaction actionShowEnvScreen(State* st) {
   Process* p = (Process*) Panel_getSelected(st->panel);
   if (!p) return HTOP_OK;
   EnvScreen* es = EnvScreen_new(p);
   InfoScreen_run((InfoScreen*)es);
   EnvScreen_delete((Object*)es);
   clear();
   CRT_enableDelay();
   return HTOP_REFRESH | HTOP_REDRAW_BAR;
}

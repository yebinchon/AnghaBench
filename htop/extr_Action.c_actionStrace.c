
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TraceScreen ;
struct TYPE_3__ {int panel; } ;
typedef TYPE_1__ State ;
typedef int Process ;
typedef int Object ;
typedef int InfoScreen ;
typedef int Htop_Reaction ;


 int CRT_enableDelay () ;
 int HTOP_OK ;
 int HTOP_REDRAW_BAR ;
 int HTOP_REFRESH ;
 int InfoScreen_run (int *) ;
 scalar_t__ Panel_getSelected (int ) ;
 int TraceScreen_delete (int *) ;
 int TraceScreen_forkTracer (int *) ;
 int * TraceScreen_new (int *) ;
 int clear () ;

__attribute__((used)) static Htop_Reaction actionStrace(State* st) {
   Process* p = (Process*) Panel_getSelected(st->panel);
   if (!p) return HTOP_OK;
   TraceScreen* ts = TraceScreen_new(p);
   bool ok = TraceScreen_forkTracer(ts);
   if (ok) {
      InfoScreen_run((InfoScreen*)ts);
   }
   TraceScreen_delete((Object*)ts);
   clear();
   CRT_enableDelay();
   return HTOP_REFRESH | HTOP_REDRAW_BAR;
}

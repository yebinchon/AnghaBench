
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ panel; TYPE_1__* pl; } ;
struct TYPE_4__ {int following; } ;
typedef TYPE_2__ State ;
typedef int MainPanel ;
typedef int Htop_Reaction ;


 int * CRT_colors ;
 int HTOP_KEEP_FOLLOWING ;
 int MainPanel_selectedPid (int *) ;
 size_t PANEL_SELECTION_FOLLOW ;
 int Panel_setSelectionColor (scalar_t__,int ) ;

Htop_Reaction Action_follow(State* st) {
   st->pl->following = MainPanel_selectedPid((MainPanel*)st->panel);
   Panel_setSelectionColor(st->panel, CRT_colors[PANEL_SELECTION_FOLLOW]);
   return HTOP_KEEP_FOLLOWING;
}

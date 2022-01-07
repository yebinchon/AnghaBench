
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eventHandling; } ;


 int CGAME_EVENT_NONE ;
 int CGAME_EVENT_SCOREBOARD ;
 int CGAME_EVENT_TEAMMENU ;
 int CG_HideTeamMenu () ;
 TYPE_1__ cgs ;

void CG_EventHandling(int type) {
 cgs.eventHandling = type;
  if (type == CGAME_EVENT_NONE) {
    CG_HideTeamMenu();
  } else if (type == CGAME_EVENT_TEAMMENU) {

  } else if (type == CGAME_EVENT_SCOREBOARD) {
  }

}

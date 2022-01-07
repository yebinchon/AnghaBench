
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;
struct TYPE_8__ {int (* Pause ) (int ) ;int cursory; int cursorx; } ;


 TYPE_5__* DC ;
 int Display_CloseCinematics () ;
 scalar_t__ Display_VisibleMenuCount () ;
 int Menu_HandleKey (int *,int,int ) ;
 int Menu_HandleMouseMove (int *,int ,int ) ;
 scalar_t__ Menu_OverActiveItem (int *,int ,int ) ;
 int Menu_RunCloseScript (TYPE_2__*) ;
 int * Menus ;
 int Menus_Activate (int *) ;
 int WINDOW_HASFOCUS ;
 int WINDOW_OOB_CLICK ;
 int WINDOW_VISIBLE ;
 int menuCount ;
 int qfalse ;
 int stub1 (int ) ;

void Menus_HandleOOBClick(menuDef_t *menu, int key, qboolean down) {
 if (menu) {
  int i;



  if (down && menu->window.flags & WINDOW_OOB_CLICK) {
   Menu_RunCloseScript(menu);
   menu->window.flags &= ~(WINDOW_HASFOCUS | WINDOW_VISIBLE);
  }

  for (i = 0; i < menuCount; i++) {
   if (Menu_OverActiveItem(&Menus[i], DC->cursorx, DC->cursory)) {
    Menu_RunCloseScript(menu);
    menu->window.flags &= ~(WINDOW_HASFOCUS | WINDOW_VISIBLE);
    Menus_Activate(&Menus[i]);
    Menu_HandleMouseMove(&Menus[i], DC->cursorx, DC->cursory);
    Menu_HandleKey(&Menus[i], key, down);
   }
  }

  if (Display_VisibleMenuCount() == 0) {
   if (DC->Pause) {
    DC->Pause(qfalse);
   }
  }
  Display_CloseCinematics();
 }
}

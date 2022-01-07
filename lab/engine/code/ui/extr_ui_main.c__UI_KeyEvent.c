
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int menuDef_t ;


 int KEYCATCH_UI ;
 int K_ESCAPE ;
 scalar_t__ Menu_Count () ;
 int * Menu_GetFocused () ;
 int Menu_HandleKey (int *,int,int ) ;
 int Menus_AnyFullScreenVisible () ;
 int Menus_CloseAll () ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Key_ClearStates () ;
 int trap_Key_GetCatcher () ;
 int trap_Key_SetCatcher (int) ;

void _UI_KeyEvent( int key, qboolean down ) {

  if (Menu_Count() > 0) {
    menuDef_t *menu = Menu_GetFocused();
  if (menu) {
   if (key == K_ESCAPE && down && !Menus_AnyFullScreenVisible()) {
    Menus_CloseAll();
   } else {
    Menu_HandleKey(menu, key, down );
   }
  } else {
   trap_Key_SetCatcher( trap_Key_GetCatcher() & ~KEYCATCH_UI );
   trap_Key_ClearStates();
   trap_Cvar_Set( "cl_paused", "0" );
  }
  }




}

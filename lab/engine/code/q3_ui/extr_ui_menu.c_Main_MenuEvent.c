
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;


 int BASETA ;
 int EXEC_APPEND ;
 int MainMenu_ExitAction ;
 int QM_ACTIVATED ;
 int UI_ArenaServersMenu () ;
 int UI_CinematicsMenu () ;
 int UI_ConfirmMenu (char*,int ,int ) ;
 int UI_DemosMenu () ;
 int UI_ModsMenu () ;
 int UI_SPLevelMenu () ;
 int UI_SetupMenu () ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_Cvar_Set (char*,int ) ;

void Main_MenuEvent (void* ptr, int event) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 129:
  UI_SPLevelMenu();
  break;

 case 131:
  UI_ArenaServersMenu();
  break;

 case 130:
  UI_SetupMenu();
  break;

 case 134:
  UI_DemosMenu();
  break;

 case 135:
  UI_CinematicsMenu();
  break;

 case 132:
  UI_ModsMenu();
  break;

 case 128:
  trap_Cvar_Set( "fs_game", BASETA);
  trap_Cmd_ExecuteText( EXEC_APPEND, "vid_restart;" );
  break;

 case 133:
  UI_ConfirmMenu( "EXIT GAME?", 0, MainMenu_ExitAction );
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
 int InGame_QuitAction ;
 int InGame_RestartAction ;
 int QM_ACTIVATED ;
 int UI_AddBotsMenu () ;
 int UI_ConfirmMenu (char*,int ,int ) ;
 int UI_PopMenu () ;
 int UI_RemoveBotsMenu () ;
 int UI_ServerInfoMenu () ;
 int UI_SetupMenu () ;
 int UI_TeamMainMenu () ;

void InGame_Event( void *ptr, int notification ) {
 if( notification != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 128:
  UI_TeamMainMenu();
  break;

 case 129:
  UI_SetupMenu();
  break;

 case 132:
  UI_ConfirmMenu( "RESTART ARENA?", 0, InGame_RestartAction );
  break;

 case 134:
  UI_ConfirmMenu( "EXIT GAME?", 0, InGame_QuitAction );
  break;

 case 130:
  UI_ServerInfoMenu();
  break;

 case 135:
  UI_AddBotsMenu();
  break;

 case 133:
  UI_RemoveBotsMenu();
  break;

 case 131:
  UI_PopMenu();
  break;
 }
}

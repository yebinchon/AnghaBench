
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 scalar_t__ UI_GetSpecialArenaInfo (char*) ;
 int UI_NewGame () ;
 int UI_PopMenu () ;
 int UI_SPLevelMenu () ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void UI_SPLevelMenu_ResetAction( qboolean result ) {
 if( !result ) {
  return;
 }


 UI_NewGame();
 if ( UI_GetSpecialArenaInfo( "training" ) ) {
  trap_Cvar_SetValue( "ui_spSelection", -4 );
 } else {
  trap_Cvar_SetValue( "ui_spSelection", 0 );
 }


 UI_PopMenu();
 UI_SPLevelMenu();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiMenuCommand_t ;


 int Com_Printf (char*,int) ;
 int Menu_Cache () ;
 int NeedCDAction ;
 int NeedCDKeyAction ;







 int UI_ConfirmMenu (char*,int ,int ) ;
 int UI_ForceMenuOff () ;
 int UI_InGameMenu () ;
 int UI_MainMenu () ;
 int trap_Cvar_Set (char*,char*) ;

void UI_SetActiveMenu( uiMenuCommand_t menu ) {


 Menu_Cache();

 switch ( menu ) {
 case 130:
  UI_ForceMenuOff();
  return;
 case 132:
  UI_MainMenu();
  return;
 case 131:
  UI_ConfirmMenu( "Insert the CD", 0, NeedCDAction );
  return;
 case 134:
  UI_ConfirmMenu( "Bad CD Key", 0, NeedCDKeyAction );
  return;
 case 133:





  trap_Cvar_Set( "cl_paused", "1" );
  UI_InGameMenu();
  return;

 case 128:
 case 129:
 default:

   Com_Printf("UI_SetActiveMenu: bad enum %d\n", menu );

   break;
 }
}

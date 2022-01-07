
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
 int QM_ACTIVATED ;
 int Setup_ResetDefaults_Action ;
 int Setup_ResetDefaults_Draw ;
 int UI_CDKeyMenu () ;
 int UI_ConfirmMenu (char*,int ,int ) ;
 int UI_ControlsMenu () ;
 int UI_GraphicsOptionsMenu () ;
 int UI_PlayerSettingsMenu () ;
 int UI_PopMenu () ;
 int UI_PreferencesMenu () ;

__attribute__((used)) static void UI_SetupMenu_Event( void *ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 131:
  UI_PlayerSettingsMenu();
  break;

 case 132:
  UI_ControlsMenu();
  break;

 case 128:
  UI_GraphicsOptionsMenu();
  break;

 case 129:
  UI_PreferencesMenu();
  break;

 case 133:
  UI_CDKeyMenu();
  break;
 case 130:
  UI_ConfirmMenu( "SET TO DEFAULTS?", Setup_ResetDefaults_Draw, Setup_ResetDefaults_Action );
  break;

 case 134:
  UI_PopMenu();
  break;
 }
}

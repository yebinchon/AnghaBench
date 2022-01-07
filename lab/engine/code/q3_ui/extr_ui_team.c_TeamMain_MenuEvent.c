
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;


 int EXEC_APPEND ;




 int QM_ACTIVATED ;
 int UI_ForceMenuOff () ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static void TeamMain_MenuEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 129:
  trap_Cmd_ExecuteText( EXEC_APPEND, "cmd team red\n" );
  UI_ForceMenuOff();
  break;

 case 131:
  trap_Cmd_ExecuteText( EXEC_APPEND, "cmd team blue\n" );
  UI_ForceMenuOff();
  break;

 case 130:
  trap_Cmd_ExecuteText( EXEC_APPEND, "cmd team free\n" );
  UI_ForceMenuOff();
  break;

 case 128:
  trap_Cmd_ExecuteText( EXEC_APPEND, "cmd team spectator\n" );
  UI_ForceMenuOff();
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int configname ;
struct TYPE_4__ {int * buffer; } ;
struct TYPE_5__ {TYPE_1__ field; } ;
struct TYPE_6__ {TYPE_2__ savename; } ;


 int COM_StripExtension (int *,char*,int) ;
 int EXEC_APPEND ;
 int MAX_QPATH ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_3__ saveConfig ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,char*) ;

__attribute__((used)) static void UI_SaveConfigMenu_SaveEvent( void *ptr, int event ) {
 char configname[MAX_QPATH];

 if( event != QM_ACTIVATED ) {
  return;
 }

 if( !saveConfig.savename.field.buffer[0] ) {
  return;
 }

 COM_StripExtension(saveConfig.savename.field.buffer, configname, sizeof(configname));
 trap_Cmd_ExecuteText( EXEC_APPEND, va( "writeconfig %s.cfg\n", configname ) );
 UI_PopMenu();
}

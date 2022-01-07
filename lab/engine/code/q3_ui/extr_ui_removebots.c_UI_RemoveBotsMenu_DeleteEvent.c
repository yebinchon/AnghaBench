
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t baseBotNum; size_t selectedBotNum; int * botClientNums; } ;


 int EXEC_APPEND ;
 int QM_ACTIVATED ;
 TYPE_1__ removeBotsMenuInfo ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_RemoveBotsMenu_DeleteEvent( void* ptr, int event ) {
 if (event != QM_ACTIVATED) {
  return;
 }

 trap_Cmd_ExecuteText( EXEC_APPEND, va("clientkick %i\n", removeBotsMenuInfo.botClientNums[removeBotsMenuInfo.baseBotNum + removeBotsMenuInfo.selectedBotNum]) );
}

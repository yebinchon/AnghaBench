
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ baseBotNum; scalar_t__ numBots; } ;


 int QM_ACTIVATED ;
 int UI_RemoveBotsMenu_SetBotNames () ;
 TYPE_1__ removeBotsMenuInfo ;

__attribute__((used)) static void UI_RemoveBotsMenu_DownEvent( void* ptr, int event ) {
 if (event != QM_ACTIVATED) {
  return;
 }

 if( removeBotsMenuInfo.baseBotNum + 7 < removeBotsMenuInfo.numBots ) {
  removeBotsMenuInfo.baseBotNum++;
  UI_RemoveBotsMenu_SetBotNames();
 }
}

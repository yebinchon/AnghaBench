
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ baseBotNum; scalar_t__ numBots; } ;


 int QM_ACTIVATED ;
 int UI_AddBotsMenu_SetBotNames () ;
 TYPE_1__ addBotsMenuInfo ;

__attribute__((used)) static void UI_AddBotsMenu_DownEvent( void* ptr, int event ) {
 if (event != QM_ACTIVATED) {
  return;
 }

 if( addBotsMenuInfo.baseBotNum + 7 < addBotsMenuInfo.numBots ) {
  addBotsMenuInfo.baseBotNum++;
  UI_AddBotsMenu_SetBotNames();
 }
}

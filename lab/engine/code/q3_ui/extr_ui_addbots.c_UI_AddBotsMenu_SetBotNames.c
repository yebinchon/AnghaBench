
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int baseBotNum; int * botnames; int * sortedBotNums; } ;


 int Info_ValueForKey (char const*,char*) ;
 int Q_strncpyz (int ,int ,int) ;
 char* UI_GetBotInfoByNumber (int ) ;
 TYPE_1__ addBotsMenuInfo ;

__attribute__((used)) static void UI_AddBotsMenu_SetBotNames( void ) {
 int n;
 const char *info;

 for ( n = 0; n < 7; n++ ) {
  info = UI_GetBotInfoByNumber( addBotsMenuInfo.sortedBotNums[addBotsMenuInfo.baseBotNum + n] );
  Q_strncpyz( addBotsMenuInfo.botnames[n], Info_ValueForKey( info, "name" ), sizeof(addBotsMenuInfo.botnames[n]) );
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numBots; int selectedmodel; int* sortedBotNums; } ;


 char* Info_ValueForKey (char const*,char*) ;
 scalar_t__ Q_stricmp (char*,char const*) ;
 char* UI_GetBotInfoByNumber (int) ;
 TYPE_1__ botSelectInfo ;

__attribute__((used)) static void UI_BotSelectMenu_Default( char *bot ) {
 const char *botInfo;
 const char *test;
 int n;
 int i;

 for( n = 0; n < botSelectInfo.numBots; n++ ) {
  botInfo = UI_GetBotInfoByNumber( n );
  test = Info_ValueForKey( botInfo, "name" );
  if( Q_stricmp( bot, test ) == 0 ) {
   break;
  }
 }
 if( n == botSelectInfo.numBots ) {
  botSelectInfo.selectedmodel = 0;
  return;
 }

 for( i = 0; i < botSelectInfo.numBots; i++ ) {
  if( botSelectInfo.sortedBotNums[i] == n ) {
   break;
  }
 }
 if( i == botSelectInfo.numBots ) {
  botSelectInfo.selectedmodel = 0;
  return;
 }

 botSelectInfo.selectedmodel = i;
}

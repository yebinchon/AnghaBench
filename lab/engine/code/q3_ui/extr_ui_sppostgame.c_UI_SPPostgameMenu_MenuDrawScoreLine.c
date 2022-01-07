
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int name ;
struct TYPE_2__ {int numClients; int* ranks; int * scores; scalar_t__* clientNums; } ;


 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (char*) ;
 int Q_strncpyz (char*,int ,int) ;
 int RANK_TIED_FLAG ;
 int SMALLCHAR_WIDTH ;
 int UI_DrawString (int,int,char*,int,int ) ;
 int UI_LEFT ;
 int UI_SMALLFONT ;
 int color_white ;
 TYPE_1__ postgameMenuInfo ;
 int trap_GetConfigString (scalar_t__,char*,int) ;
 char* va (char*,int,char*,int ) ;

__attribute__((used)) static void UI_SPPostgameMenu_MenuDrawScoreLine( int n, int y ) {
 int rank;
 char name[64];
 char info[MAX_INFO_STRING];

 if( n > (postgameMenuInfo.numClients + 1) ) {
  n -= (postgameMenuInfo.numClients + 2);
 }

 if( n >= postgameMenuInfo.numClients ) {
  return;
 }

 rank = postgameMenuInfo.ranks[n];
 if( rank & RANK_TIED_FLAG ) {
  UI_DrawString( 640 - 31 * SMALLCHAR_WIDTH, y, "(tie)", UI_LEFT|UI_SMALLFONT, color_white );
  rank &= ~RANK_TIED_FLAG;
 }
 trap_GetConfigString( CS_PLAYERS + postgameMenuInfo.clientNums[n], info, MAX_INFO_STRING );
 Q_strncpyz( name, Info_ValueForKey( info, "n" ), sizeof(name) );
 Q_CleanStr( name );

 UI_DrawString( 640 - 25 * SMALLCHAR_WIDTH, y, va( "#%i: %-16s %2i", rank + 1, name, postgameMenuInfo.scores[n] ), UI_LEFT|UI_SMALLFONT, color_white );
}

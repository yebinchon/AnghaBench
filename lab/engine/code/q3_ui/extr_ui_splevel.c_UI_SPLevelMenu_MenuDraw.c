
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double* vec4_t ;
typedef int string ;
typedef int buf ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_10__ {TYPE_2__ generic; } ;
struct TYPE_6__ {scalar_t__ shader; } ;
struct TYPE_9__ {char* playerModel; int* awardLevels; int numMaps; char** levelNames; int* levelScores; int* levelScoresSkill; int numBots; char** botNames; scalar_t__* botPics; int selectedArenaInfo; scalar_t__ levelFocusPic; TYPE_5__* item_maps; int menu; scalar_t__ levelSelectedPic; scalar_t__* levelCompletePic; TYPE_1__ item_player; int playerPicName; scalar_t__ reinit; } ;
struct TYPE_8__ {int realtime; } ;


 int AWARDS_Y ;
 int Com_sprintf (char*,int,char*,...) ;
 char* Info_ValueForKey (int ,char*) ;
 int MAX_INFO_VALUE ;
 int Menu_Draw (int *) ;
 TYPE_5__* Menu_ItemAtCursor (int *) ;
 int PLAYER_Y ;
 int PULSE_DIVISOR ;
 int PlayerIcon (char*,int ,int) ;
 int Q_CleanStr (char*) ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char*,int) ;
 int Q_strupr (char*) ;
 int UI_BIGFONT ;
 int UI_CENTER ;
 int UI_DrawHandlePic (int,int,int,int,scalar_t__) ;
 int UI_DrawProportionalString (int,int,char*,int,int ) ;
 int UI_DrawString (int,int,char*,int,int ) ;
 int UI_FillRect (int,int,int,int,int ) ;
 int UI_LEFT ;
 int UI_PopMenu () ;
 int UI_SMALLFONT ;
 int UI_SPLevelMenu () ;
 int Vector4Copy (int ,double*) ;
 int color_black ;
 int color_blue ;
 int color_red ;
 int color_white ;
 int color_yellow ;
 scalar_t__ currentSet ;
 TYPE_4__ levelMenuInfo ;
 int selectedArena ;
 scalar_t__ selectedArenaSet ;
 double sin (int) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_R_SetColor (double*) ;
 TYPE_3__ uis ;
 char* va (char*,scalar_t__) ;

__attribute__((used)) static void UI_SPLevelMenu_MenuDraw( void ) {
 int n, i;
 int x, y;
 vec4_t color;
 int level;

 int pad;
 char buf[MAX_INFO_VALUE];
 char string[64];

 if( levelMenuInfo.reinit ) {
  UI_PopMenu();
  UI_SPLevelMenu();
  return;
 }


 trap_Cvar_VariableStringBuffer( "name", string, 32 );
 Q_CleanStr( string );
 UI_DrawProportionalString( 320, PLAYER_Y, string, UI_CENTER|UI_SMALLFONT, color_blue );


 trap_Cvar_VariableStringBuffer( "model", buf, sizeof(buf) );
 if( Q_stricmp( buf, levelMenuInfo.playerModel ) != 0 ) {
  Q_strncpyz( levelMenuInfo.playerModel, buf, sizeof(levelMenuInfo.playerModel) );
  PlayerIcon( levelMenuInfo.playerModel, levelMenuInfo.playerPicName, sizeof(levelMenuInfo.playerPicName) );
  levelMenuInfo.item_player.shader = 0;
 }


 Menu_Draw( &levelMenuInfo.menu );


 y = AWARDS_Y;
 i = 0;
 for( n = 0; n < 6; n++ ) {
  level = levelMenuInfo.awardLevels[n];
  if( level > 0 ) {
   if( i & 1 ) {
    x = 224 - (i - 1 ) / 2 * (48 + 16);
   }
   else {
    x = 368 + i / 2 * (48 + 16);
   }
   i++;

   if( level == 1 ) {
    continue;
   }

   if( level >= 1000000 ) {
    Com_sprintf( string, sizeof(string), "%im", level / 1000000 );
   }
   else if( level >= 1000 ) {
    Com_sprintf( string, sizeof(string), "%ik", level / 1000 );
   }
   else {
    Com_sprintf( string, sizeof(string), "%i", level );
   }

   UI_DrawString( x + 24, y + 48, string, UI_CENTER, color_yellow );
  }
 }

 UI_DrawProportionalString( 18, 38, va( "Tier %i", selectedArenaSet + 1 ), UI_LEFT|UI_SMALLFONT, color_blue );

 for ( n = 0; n < levelMenuInfo.numMaps; n++ ) {
  x = levelMenuInfo.item_maps[n].generic.x;
  y = levelMenuInfo.item_maps[n].generic.y;
  UI_FillRect( x, y + 96, 128, 18, color_black );
 }

 if ( selectedArenaSet > currentSet ) {
  UI_DrawProportionalString( 320, 216, "ACCESS DENIED", UI_CENTER|UI_BIGFONT, color_red );
  return;
 }


 Vector4Copy( color_white, color );
 color[3] = 0.5+0.5*sin(uis.realtime/PULSE_DIVISOR);
 for ( n = 0; n < levelMenuInfo.numMaps; n++ ) {
  x = levelMenuInfo.item_maps[n].generic.x;
  y = levelMenuInfo.item_maps[n].generic.y;

  UI_DrawString( x + 64, y + 96, levelMenuInfo.levelNames[n], UI_CENTER|UI_SMALLFONT, color_blue );

  if( levelMenuInfo.levelScores[n] == 1 ) {
   UI_DrawHandlePic( x, y, 128, 96, levelMenuInfo.levelCompletePic[levelMenuInfo.levelScoresSkill[n] - 1] );
  }

  if ( n == selectedArena ) {
   if( Menu_ItemAtCursor( &levelMenuInfo.menu ) == &levelMenuInfo.item_maps[n] ) {
    trap_R_SetColor( color );
   }
   UI_DrawHandlePic( x-1, y-1, 130, 130 - 14, levelMenuInfo.levelSelectedPic );
   trap_R_SetColor( ((void*)0) );
  }
  else if( Menu_ItemAtCursor( &levelMenuInfo.menu ) == &levelMenuInfo.item_maps[n] ) {
   trap_R_SetColor( color );
   UI_DrawHandlePic( x-31, y-30, 256, 256-27, levelMenuInfo.levelFocusPic);
   trap_R_SetColor( ((void*)0) );
  }
 }


 y = 192;
 Q_strncpyz( buf, Info_ValueForKey( levelMenuInfo.selectedArenaInfo, "map" ), 20 );
 Q_strupr( buf );
 Com_sprintf( string, sizeof(string), "%s: %s", buf, Info_ValueForKey( levelMenuInfo.selectedArenaInfo, "longname" ) );
 UI_DrawProportionalString( 320, y, string, UI_CENTER|UI_SMALLFONT, color_blue );





 y += 24;
 pad = (7 - levelMenuInfo.numBots) * (64 + 26) / 2;
 for( n = 0; n < levelMenuInfo.numBots; n++ ) {
  x = 18 + pad + (64 + 26) * n;
  if( levelMenuInfo.botPics[n] ) {
   UI_DrawHandlePic( x, y, 64, 64, levelMenuInfo.botPics[n]);
  }
  else {
   UI_FillRect( x, y, 64, 64, color_black );
   UI_DrawProportionalString( x+22, y+18, "?", UI_BIGFONT, color_blue );
  }
  UI_DrawString( x, y + 64, levelMenuInfo.botNames[n], UI_SMALLFONT|UI_LEFT, color_blue );
 }
}

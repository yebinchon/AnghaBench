
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* servername; char* updateInfoString; int connState; char* connectPacketCount; int messageString; } ;
typedef TYPE_2__ uiClientState_t ;
typedef int qboolean ;
typedef int info ;
typedef int downloadName ;
struct TYPE_15__ {int widthInChars; int buffer; } ;
struct TYPE_10__ {char* name; int x; int y; scalar_t__ callback; int type; } ;
struct TYPE_14__ {int width; TYPE_9__ field; TYPE_1__ generic; } ;
struct TYPE_13__ {int x; int wrapAround; scalar_t__ nitems; } ;
struct TYPE_12__ {int menuBackShader; } ;







 int CS_SERVERINFO ;
 int Cvar_VariableString (char*) ;
 int Field_Clear (TYPE_9__*) ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 int MField_Draw (TYPE_6__*) ;
 int MTYPE_FIELD ;
 int Menu_AddItem (TYPE_5__*,void*) ;
 int Menu_Cache () ;
 int Q_strncpyz (int ,int ,int) ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int UI_BIGFONT ;
 int UI_CENTER ;
 int UI_DROPSHADOW ;
 int UI_DisplayDownloadInfo (char*) ;
 int UI_DrawHandlePic (int ,int ,int,int,int ) ;
 int UI_DrawProportionalString (int,int,char*,int,int ) ;
 int UI_DrawProportionalString_AutoWrapped (int,int,int,int,int ,int,int ) ;
 int UI_SMALLFONT ;
 int UI_SetColor (int ) ;
 int color_white ;
 int lastConnState ;
 char* lastLoadingText ;
 int menu_text_color ;
 TYPE_6__ passwordField ;
 scalar_t__ passwordNeeded ;
 int qtrue ;
 int s_customize_player_action ;
 TYPE_5__ s_ingame_menu ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_GetClientState (TYPE_2__*) ;
 scalar_t__ trap_GetConfigString (int ,char*,int) ;
 TYPE_3__ uis ;
 char* va (char*,char*) ;

void UI_DrawConnectScreen( qboolean overlay ) {
 char *s;
 uiClientState_t cstate;
 char info[MAX_INFO_VALUE];

 Menu_Cache();

 if ( !overlay ) {

  UI_SetColor( color_white );
  UI_DrawHandlePic( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, uis.menuBackShader );
 }


 trap_GetClientState( &cstate );

 info[0] = '\0';
 if( trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) ) ) {
  UI_DrawProportionalString( 320, 16, va( "Loading %s", Info_ValueForKey( info, "mapname" ) ), UI_BIGFONT|UI_CENTER|UI_DROPSHADOW, color_white );
 }

 UI_DrawProportionalString( 320, 64, va("Connecting to %s", cstate.servername), UI_CENTER|UI_SMALLFONT|UI_DROPSHADOW, menu_text_color );



 UI_DrawProportionalString( SCREEN_WIDTH/2, SCREEN_HEIGHT-32,
  Info_ValueForKey( cstate.updateInfoString, "motd" ), UI_CENTER|UI_SMALLFONT|UI_DROPSHADOW, menu_text_color );


 if ( cstate.connState < 131 ) {
  UI_DrawProportionalString_AutoWrapped( 320, 192, 630, 20, cstate.messageString, UI_CENTER|UI_SMALLFONT|UI_DROPSHADOW, menu_text_color );
 }
 if ( lastConnState > cstate.connState ) {
  lastLoadingText[0] = '\0';
 }
 lastConnState = cstate.connState;

 switch ( cstate.connState ) {
 case 130:
  s = va("Awaiting challenge...%i", cstate.connectPacketCount);
  break;
 case 132:
  s = va("Awaiting connection...%i", cstate.connectPacketCount);
  break;
 case 131: {
  char downloadName[MAX_INFO_VALUE];

   trap_Cvar_VariableStringBuffer( "cl_downloadName", downloadName, sizeof(downloadName) );
   if (*downloadName) {
    UI_DisplayDownloadInfo( downloadName );
    return;
   }
  }
  s = "Awaiting gamestate...";
  break;
 case 129:
  return;
 case 128:
  return;
 default:
  return;
 }

 UI_DrawProportionalString( 320, 128, s, UI_CENTER|UI_SMALLFONT|UI_DROPSHADOW, color_white );


}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* updateInfoString; int connState; char* connectPacketCount; int servername; int messageString; } ;
typedef TYPE_1__ uiClientState_t ;
typedef int text ;
typedef int qboolean ;
typedef int menuDef_t ;
typedef int info ;
typedef int downloadName ;







 int CS_SERVERINFO ;
 int Com_sprintf (char*,int,char*,int ) ;
 int ITEM_TEXTSTYLE_SHADOWEDMORE ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 int Menu_Paint (int *,int ) ;
 int * Menus_FindByName (char*) ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int Text_PaintCenter (float,float,float,int ,char*,int ) ;
 int Text_PaintCenter_AutoWrapped (float,float,int,int,float,int ,int ,int ) ;
 int UI_DisplayDownloadInfo (char*,float,float,float) ;
 int colorWhite ;
 int lastConnState ;
 char* lastLoadingText ;
 int qtrue ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_GetClientState (TYPE_1__*) ;
 scalar_t__ trap_GetConfigString (int ,char*,int) ;
 char* va (char*,char*) ;

void UI_DrawConnectScreen( qboolean overlay ) {
 char *s;
 uiClientState_t cstate;
 char info[MAX_INFO_VALUE];
 char text[256];
 float centerPoint, yStart, scale;

 menuDef_t *menu = Menus_FindByName("Connect");


 if ( !overlay && menu ) {
  Menu_Paint(menu, qtrue);
 }

 if (!overlay) {
  centerPoint = 320;
  yStart = 130;
  scale = 0.5f;
 } else {
  return;
 }


 trap_GetClientState( &cstate );

 info[0] = '\0';
 if( trap_GetConfigString( CS_SERVERINFO, info, sizeof(info) ) ) {
  Text_PaintCenter(centerPoint, yStart, scale, colorWhite, va( "Loading %s", Info_ValueForKey( info, "mapname" )), 0);
 }

 if (!Q_stricmp(cstate.servername,"localhost")) {
  Text_PaintCenter(centerPoint, yStart + 48, scale, colorWhite, "Starting up...", ITEM_TEXTSTYLE_SHADOWEDMORE);
 } else {
  Com_sprintf(text, sizeof(text), "Connecting to %s", cstate.servername);
  Text_PaintCenter(centerPoint, yStart + 48, scale, colorWhite,text , ITEM_TEXTSTYLE_SHADOWEDMORE);
 }


 Text_PaintCenter(centerPoint, 600, scale, colorWhite, Info_ValueForKey( cstate.updateInfoString, "motd" ), 0);

 if ( cstate.connState < 131 ) {
  Text_PaintCenter_AutoWrapped(centerPoint, yStart + 176, 630, 20, scale, colorWhite, cstate.messageString, 0);
 }

 if ( lastConnState > cstate.connState ) {
  lastLoadingText[0] = '\0';
 }
 lastConnState = cstate.connState;

 switch ( cstate.connState ) {
 case 130:
  s = va("Awaiting connection...%i", cstate.connectPacketCount);
  break;
 case 132:
  s = va("Awaiting challenge...%i", cstate.connectPacketCount);
  break;
 case 131: {
  char downloadName[MAX_INFO_VALUE];

   trap_Cvar_VariableStringBuffer( "cl_downloadName", downloadName, sizeof(downloadName) );
   if (*downloadName) {
    UI_DisplayDownloadInfo( downloadName, centerPoint, yStart, scale );
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


 if (Q_stricmp(cstate.servername,"localhost")) {
  Text_PaintCenter(centerPoint, yStart + 80, scale, colorWhite, s, 0);
 }


}

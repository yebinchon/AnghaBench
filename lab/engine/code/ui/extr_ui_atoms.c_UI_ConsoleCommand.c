
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int shader3 ;
typedef int shader2 ;
typedef int shader1 ;
typedef int qboolean ;
struct TYPE_3__ {int frameTime; int realTime; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 int MAX_QPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char*,int) ;
 char* UI_Argv (int) ;
 int UI_Cache_f () ;
 int UI_CalcPostGameStats () ;
 int UI_Load () ;
 int UI_Report () ;
 int UI_ShowPostGame (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_Argc () ;
 int trap_R_RemapShader (char*,char*,char*) ;
 TYPE_2__ uiInfo ;

qboolean UI_ConsoleCommand( int realTime ) {
 char *cmd;

 uiInfo.uiDC.frameTime = realTime - uiInfo.uiDC.realTime;
 uiInfo.uiDC.realTime = realTime;

 cmd = UI_Argv( 0 );




 if ( Q_stricmp (cmd, "ui_test") == 0 ) {
  UI_ShowPostGame(qtrue);
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_report") == 0 ) {
  UI_Report();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_load") == 0 ) {
  UI_Load();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "remapShader") == 0 ) {
  if (trap_Argc() == 4) {
   char shader1[MAX_QPATH];
   char shader2[MAX_QPATH];
   char shader3[MAX_QPATH];

   Q_strncpyz(shader1, UI_Argv(1), sizeof(shader1));
   Q_strncpyz(shader2, UI_Argv(2), sizeof(shader2));
   Q_strncpyz(shader3, UI_Argv(3), sizeof(shader3));

   trap_R_RemapShader(shader1, shader2, shader3);
   return qtrue;
  }
 }

 if ( Q_stricmp (cmd, "postgame") == 0 ) {
  UI_CalcPostGameStats();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_cache") == 0 ) {
  UI_Cache_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_teamOrders") == 0 ) {

  return qtrue;
 }


 if ( Q_stricmp (cmd, "ui_cdkey") == 0 ) {

  return qtrue;
 }

 return qfalse;
}

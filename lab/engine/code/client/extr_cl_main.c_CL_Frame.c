
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef TYPE_1__ qtime_t ;
typedef int mapName ;
struct TYPE_23__ {int value; scalar_t__ integer; } ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ state; float aviVideoFrameRemainder; scalar_t__ demorecording; int servername; int demoplaying; scalar_t__ cURLDisconnected; scalar_t__ downloadCURLM; } ;
struct TYPE_19__ {int realFrametime; int frametime; int realtime; int framecount; scalar_t__ cddialog; } ;
struct TYPE_18__ {int integer; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {int value; } ;
struct TYPE_14__ {int mapname; } ;
struct TYPE_13__ {scalar_t__ integer; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_DISCONNECTED ;
 int CL_CaptureVoip () ;
 int CL_CheckForResend () ;
 int CL_CheckTimeout () ;
 int CL_CheckUserinfo () ;
 int CL_SendCmd () ;
 int CL_SetCGameTime () ;
 int CL_StopRecord_f () ;
 int CL_TakeVideoFrame () ;
 int CL_UpdateMumble () ;
 scalar_t__ CL_VideoRecording () ;
 int CL_cURL_PerformDownload () ;
 int COM_SkipPath (int ) ;
 int COM_StripExtension (char*,char*,int) ;
 int Cbuf_ExecuteText (int ,char*) ;
 int Com_RealTime (TYPE_1__*) ;
 int Con_RunConsole () ;
 int EXEC_NOW ;
 int KEYCATCH_UI ;
 int Key_GetCatcher () ;
 float MAX (float,float) ;
 int MAX_OSPATH ;
 int MAX_QPATH ;
 float MIN (int,float) ;
 int Q_strncpyz (char*,int ,int) ;
 int SCR_DebugGraph (double) ;
 int SCR_RunCinematic () ;
 int SCR_UpdateScreen () ;
 int S_StopAllSounds () ;
 int S_Update () ;
 int UIMENU_MAIN ;
 int UIMENU_NEED_CD ;
 int UI_SET_ACTIVE_MENU ;
 int VM_Call (scalar_t__,int ,int ) ;
 TYPE_11__ cl ;
 TYPE_10__* cl_autoRecordDemo ;
 TYPE_9__* cl_aviFrameRate ;
 TYPE_8__* cl_forceavidemo ;
 TYPE_7__* cl_timegraph ;
 TYPE_6__ clc ;
 TYPE_5__ cls ;
 TYPE_4__* com_cl_running ;
 TYPE_3__* com_sv_running ;
 TYPE_2__* com_timescale ;
 scalar_t__ qfalse ;
 char* strstr (char*,char*) ;
 scalar_t__ uivm ;
 char* va (char*,char*,char*,char*,...) ;

void CL_Frame ( int msec ) {

 if ( !com_cl_running->integer ) {
  return;
 }
 if ( cls.cddialog ) {

  cls.cddialog = qfalse;
  VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_NEED_CD );
 } else if ( clc.state == CA_DISCONNECTED && !( Key_GetCatcher( ) & KEYCATCH_UI )
  && !com_sv_running->integer && uivm ) {

  S_StopAllSounds();
  VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
 }


 if ( CL_VideoRecording( ) && cl_aviFrameRate->integer && msec) {

  if ( clc.state == CA_ACTIVE || cl_forceavidemo->integer) {
   float fps = MIN(cl_aviFrameRate->value * com_timescale->value, 1000.0f);
   float frameDuration = MAX(1000.0f / fps, 1.0f) + clc.aviVideoFrameRemainder;

   CL_TakeVideoFrame( );

   msec = (int)frameDuration;
   clc.aviVideoFrameRemainder = frameDuration - msec;
  }
 }

 if( cl_autoRecordDemo->integer ) {
  if( clc.state == CA_ACTIVE && !clc.demorecording && !clc.demoplaying ) {

   qtime_t now;
   char *nowString;
   char *p;
   char mapName[ MAX_QPATH ];
   char serverName[ MAX_OSPATH ];

   Com_RealTime( &now );
   nowString = va( "%04d%02d%02d%02d%02d%02d",
     1900 + now.tm_year,
     1 + now.tm_mon,
     now.tm_mday,
     now.tm_hour,
     now.tm_min,
     now.tm_sec );

   Q_strncpyz( serverName, clc.servername, MAX_OSPATH );


   p = strstr( serverName, ":" );
   if( p ) {
    *p = '.';
   }

   Q_strncpyz( mapName, COM_SkipPath( cl.mapname ), sizeof( cl.mapname ) );
   COM_StripExtension(mapName, mapName, sizeof(mapName));

   Cbuf_ExecuteText( EXEC_NOW,
     va( "record %s-%s-%s", nowString, serverName, mapName ) );
  }
  else if( clc.state != CA_ACTIVE && clc.demorecording ) {

   CL_StopRecord_f( );
  }
 }


 cls.realFrametime = msec;


 cls.frametime = msec;

 cls.realtime += cls.frametime;

 if ( cl_timegraph->integer ) {
  SCR_DebugGraph ( cls.realFrametime * 0.25 );
 }


 CL_CheckUserinfo();



 CL_CheckTimeout();


 CL_SendCmd();


 CL_CheckForResend();


 CL_SetCGameTime();


 SCR_UpdateScreen();


 S_Update();
 SCR_RunCinematic();

 Con_RunConsole();

 cls.framecount++;
}

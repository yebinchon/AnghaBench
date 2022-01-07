
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {int timeResidual; scalar_t__ time; scalar_t__ restartTime; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int time; int nextSnapshotEntities; int numSnapshotEntities; } ;


 int CS_SERVERINFO ;
 int CS_SYSTEMINFO ;
 int CVAR_SERVERINFO ;
 int CVAR_SYSTEMINFO ;
 int Cbuf_AddText (char*) ;
 int Cvar_InfoString (int) ;
 int Cvar_InfoString_Big (int) ;
 int Cvar_Set (char*,char*) ;
 float Cvar_VariableString (char*) ;
 int GAME_RUN_FRAME ;
 int HEARTBEAT_FOR_MASTER ;
 int SV_BotFrame (scalar_t__) ;
 int SV_CalcPings () ;
 scalar_t__ SV_CheckPaused () ;
 int SV_CheckTimeouts () ;
 int SV_MasterHeartbeat (int ) ;
 int SV_SendClientMessages () ;
 int SV_SetConfigstring (int ,int ) ;
 int SV_Shutdown (char*) ;
 int Sys_Milliseconds () ;
 int Sys_Sleep (int) ;
 int VM_Call (int ,int ,scalar_t__) ;
 TYPE_8__* com_dedicated ;
 TYPE_7__* com_speeds ;
 TYPE_6__* com_sv_running ;
 TYPE_5__* com_timescale ;
 int cvar_modifiedFlags ;
 int gvm ;
 TYPE_4__ sv ;
 TYPE_3__* sv_fps ;
 TYPE_2__* sv_killserver ;
 TYPE_1__ svs ;
 int time_game ;
 char* va (char*,float) ;

void SV_Frame( int msec ) {
 int frameMsec;
 int startTime;


 if ( sv_killserver->integer ) {
  SV_Shutdown ("Server was killed");
  Cvar_Set( "sv_killserver", "0" );
  return;
 }

 if (!com_sv_running->integer)
 {






  return;
 }


 if ( SV_CheckPaused() ) {
  return;
 }


 if ( sv_fps->integer < 1 ) {
  Cvar_Set( "sv_fps", "10" );
 }

 frameMsec = 1000 / sv_fps->integer * com_timescale->value;

 if(frameMsec < 1)
 {
  Cvar_Set("timescale", va("%f", sv_fps->integer / 1000.0f));
  frameMsec = 1;
 }

 sv.timeResidual += msec;

 if (!com_dedicated->integer) SV_BotFrame (sv.time + sv.timeResidual);





 if ( svs.time > 0x70000000 ) {
  SV_Shutdown( "Restarting server due to time wrapping" );
  Cbuf_AddText( va( "map %s\n", Cvar_VariableString( "mapname" ) ) );
  return;
 }

 if ( svs.nextSnapshotEntities >= 0x7FFFFFFE - svs.numSnapshotEntities ) {
  SV_Shutdown( "Restarting server due to numSnapshotEntities wrapping" );
  Cbuf_AddText( va( "map %s\n", Cvar_VariableString( "mapname" ) ) );
  return;
 }

 if( sv.restartTime && sv.time >= sv.restartTime ) {
  sv.restartTime = 0;
  Cbuf_AddText( "map_restart 0\n" );
  return;
 }


 if ( cvar_modifiedFlags & CVAR_SERVERINFO ) {
  SV_SetConfigstring( CS_SERVERINFO, Cvar_InfoString( CVAR_SERVERINFO ) );
  cvar_modifiedFlags &= ~CVAR_SERVERINFO;
 }
 if ( cvar_modifiedFlags & CVAR_SYSTEMINFO ) {
  SV_SetConfigstring( CS_SYSTEMINFO, Cvar_InfoString_Big( CVAR_SYSTEMINFO ) );
  cvar_modifiedFlags &= ~CVAR_SYSTEMINFO;
 }

 if ( com_speeds->integer ) {
  startTime = Sys_Milliseconds ();
 } else {
  startTime = 0;
 }


 SV_CalcPings();

 if (com_dedicated->integer) SV_BotFrame (sv.time);


 while ( sv.timeResidual >= frameMsec ) {
  sv.timeResidual -= frameMsec;
  svs.time += frameMsec;
  sv.time += frameMsec;


  VM_Call (gvm, GAME_RUN_FRAME, sv.time);
 }

 if ( com_speeds->integer ) {
  time_game = Sys_Milliseconds () - startTime;
 }


 SV_CheckTimeouts();


 SV_SendClientMessages();


 SV_MasterHeartbeat(HEARTBEAT_FOR_MASTER);
}

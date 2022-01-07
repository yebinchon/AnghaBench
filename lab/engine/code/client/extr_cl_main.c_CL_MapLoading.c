
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int gameState; } ;
struct TYPE_9__ {scalar_t__ state; int lastPacketSentTime; int serverAddress; int servername; int connectTime; int * serverMessage; } ;
struct TYPE_8__ {int * updateInfoString; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {scalar_t__ integer; } ;


 scalar_t__ CA_CHALLENGING ;
 scalar_t__ CA_CONNECTED ;
 scalar_t__ CA_DISCONNECTED ;
 int CL_CheckForResend () ;
 int CL_Disconnect (int ) ;
 int Com_Memset (int *,int ,int) ;
 int Con_Close () ;
 int Cvar_Set (char*,char*) ;
 int KEYCATCH_CONSOLE ;
 int Key_SetCatcher (int ) ;
 int NA_UNSPEC ;
 int NET_StringToAdr (int ,int *,int ) ;
 int Q_stricmp (int ,char*) ;
 int Q_strncpyz (int ,char*,int) ;
 int RETRANSMIT_TIMEOUT ;
 int SCR_UpdateScreen () ;
 TYPE_5__ cl ;
 TYPE_4__ clc ;
 TYPE_3__ cls ;
 TYPE_2__* com_cl_running ;
 TYPE_1__* com_dedicated ;
 int qtrue ;

void CL_MapLoading( void ) {
 if ( com_dedicated->integer ) {
  clc.state = CA_DISCONNECTED;
  Key_SetCatcher( KEYCATCH_CONSOLE );
  return;
 }

 if ( !com_cl_running->integer ) {
  return;
 }

 Con_Close();
 Key_SetCatcher( 0 );


 if ( clc.state >= CA_CONNECTED && !Q_stricmp( clc.servername, "localhost" ) ) {
  clc.state = CA_CONNECTED;
  Com_Memset( cls.updateInfoString, 0, sizeof( cls.updateInfoString ) );
  Com_Memset( clc.serverMessage, 0, sizeof( clc.serverMessage ) );
  Com_Memset( &cl.gameState, 0, sizeof( cl.gameState ) );
  clc.lastPacketSentTime = -9999;
  SCR_UpdateScreen();
 } else {

  Cvar_Set( "nextmap", "" );
  CL_Disconnect( qtrue );
  Q_strncpyz( clc.servername, "localhost", sizeof(clc.servername) );
  clc.state = CA_CHALLENGING;
  Key_SetCatcher( 0 );
  SCR_UpdateScreen();
  clc.connectTime = -RETRANSMIT_TIMEOUT;
  NET_StringToAdr( clc.servername, &clc.serverAddress, NA_UNSPEC);


  CL_CheckForResend();
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int info ;
typedef int data ;
typedef int byte ;
struct TYPE_16__ {int type; } ;
struct TYPE_15__ {int state; scalar_t__ connectTime; int challenge; TYPE_7__ serverAddress; int compat; int connectPacketCount; scalar_t__ demoplaying; } ;
struct TYPE_14__ {scalar_t__ realtime; } ;
struct TYPE_13__ {int string; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;




 int CL_RequestAuthorization () ;
 int CVAR_USERINFO ;
 int Com_Error (int ,char*) ;
 int Com_sprintf (char*,int,char*,...) ;
 int Cvar_InfoString (int ) ;
 int Cvar_VariableValue (char*) ;
 int ERR_FATAL ;
 int Info_SetValueForKey (char*,char*,int ) ;
 int MAX_INFO_STRING ;
 int NA_IP ;
 int NET_OutOfBandData (int ,TYPE_7__,int *,int ) ;
 int NET_OutOfBandPrint (int ,TYPE_7__,char*,char*) ;
 int NS_CLIENT ;
 int Q_strncpyz (char*,int ,int) ;
 scalar_t__ RETRANSMIT_TIMEOUT ;
 int Sys_IsLANAddress (TYPE_7__) ;
 TYPE_6__ clc ;
 TYPE_5__ cls ;
 TYPE_4__* com_gamename ;
 TYPE_3__* com_legacyprotocol ;
 TYPE_2__* com_protocol ;
 TYPE_1__* com_standalone ;
 int cvar_modifiedFlags ;
 int qtrue ;
 int strlen (char*) ;
 int va (char*,int) ;

void CL_CheckForResend( void ) {
 int port;
 char info[MAX_INFO_STRING];
 char data[MAX_INFO_STRING + 10];


 if ( clc.demoplaying ) {
  return;
 }


 if ( clc.state != 128 && clc.state != 129 ) {
  return;
 }

 if ( cls.realtime - clc.connectTime < RETRANSMIT_TIMEOUT ) {
  return;
 }

 clc.connectTime = cls.realtime;
 clc.connectPacketCount++;


 switch ( clc.state ) {
 case 128:


  if (!com_standalone->integer && clc.serverAddress.type == NA_IP && !Sys_IsLANAddress( clc.serverAddress ) )
   CL_RequestAuthorization();





  Com_sprintf(data, sizeof(data), "getchallenge %d %s", clc.challenge, com_gamename->string);

  NET_OutOfBandPrint(NS_CLIENT, clc.serverAddress, "%s", data);
  break;

 case 129:

  port = Cvar_VariableValue ("net_qport");

  Q_strncpyz( info, Cvar_InfoString( CVAR_USERINFO ), sizeof( info ) );
   Info_SetValueForKey(info, "protocol", va("%i", com_protocol->integer));
  Info_SetValueForKey( info, "qport", va("%i", port ) );
  Info_SetValueForKey( info, "challenge", va("%i", clc.challenge ) );

  Com_sprintf( data, sizeof(data), "connect \"%s\"", info );
  NET_OutOfBandData( NS_CLIENT, clc.serverAddress, (byte *) data, strlen ( data ) );


  cvar_modifiedFlags &= ~CVAR_USERINFO;
  break;

 default:
  Com_Error( ERR_FATAL, "CL_CheckForResend: bad clc.state" );
 }
}

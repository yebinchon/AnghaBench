
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int retrieved; int pending; scalar_t__ startTime; int print; scalar_t__ time; int address; int string; } ;
typedef TYPE_2__ serverStatus_t ;
typedef int netadr_t ;
struct TYPE_6__ {scalar_t__ port; } ;
struct TYPE_9__ {int retrieved; TYPE_1__ address; } ;
struct TYPE_8__ {scalar_t__ integer; } ;


 TYPE_2__* CL_GetServerStatus (int ) ;
 scalar_t__ Com_Milliseconds () ;
 int MAX_SERVERSTATUSREQUESTS ;
 int NA_UNSPEC ;
 scalar_t__ NET_CompareAdr (int ,int ) ;
 int NET_OutOfBandPrint (int ,int ,char*) ;
 int NET_StringToAdr (char*,int *,int ) ;
 int NS_CLIENT ;
 int Q_strncpyz (char*,int ,int) ;
 TYPE_4__* cl_serverStatusList ;
 TYPE_3__* cl_serverStatusResendTime ;
 int qfalse ;
 int qtrue ;

int CL_ServerStatus( char *serverAddress, char *serverStatusString, int maxLen ) {
 int i;
 netadr_t to;
 serverStatus_t *serverStatus;


 if ( !serverAddress ) {
  for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
   cl_serverStatusList[i].address.port = 0;
   cl_serverStatusList[i].retrieved = qtrue;
  }
  return qfalse;
 }

 if ( !NET_StringToAdr( serverAddress, &to, NA_UNSPEC) ) {
  return qfalse;
 }
 serverStatus = CL_GetServerStatus( to );

 if ( !serverStatusString ) {
  serverStatus->retrieved = qtrue;
  return qfalse;
 }


 if ( NET_CompareAdr( to, serverStatus->address) ) {

  if (!serverStatus->pending) {
   Q_strncpyz(serverStatusString, serverStatus->string, maxLen);
   serverStatus->retrieved = qtrue;
   serverStatus->startTime = 0;
   return qtrue;
  }

  else if ( serverStatus->startTime < Com_Milliseconds() - cl_serverStatusResendTime->integer ) {
   serverStatus->print = qfalse;
   serverStatus->pending = qtrue;
   serverStatus->retrieved = qfalse;
   serverStatus->time = 0;
   serverStatus->startTime = Com_Milliseconds();
   NET_OutOfBandPrint( NS_CLIENT, to, "getstatus" );
   return qfalse;
  }
 }

 else if ( serverStatus->retrieved ) {
  serverStatus->address = to;
  serverStatus->print = qfalse;
  serverStatus->pending = qtrue;
  serverStatus->retrieved = qfalse;
  serverStatus->startTime = Com_Milliseconds();
  serverStatus->time = 0;
  NET_OutOfBandPrint( NS_CLIENT, to, "getstatus" );
  return qfalse;
 }
 return qfalse;
}

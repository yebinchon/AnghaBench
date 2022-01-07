
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int qboolean ;
struct TYPE_16__ {int type; } ;
typedef TYPE_1__ netadr_t ;
typedef int msg_t ;
typedef int info ;
struct TYPE_22__ {scalar_t__ port; } ;
struct TYPE_21__ {char* info; scalar_t__ time; scalar_t__ start; TYPE_8__ adr; } ;
struct TYPE_20__ {scalar_t__ pingUpdateSource; int numlocalservers; TYPE_13__* localServers; } ;
struct TYPE_19__ {int string; } ;
struct TYPE_18__ {int integer; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_15__ {TYPE_8__ adr; } ;


 scalar_t__ AS_LOCAL ;
 int CL_InitServerInfo (TYPE_13__*,TYPE_1__*) ;
 int CL_SetServerInfoByAddress (TYPE_1__,char*,scalar_t__) ;
 int Com_DPrintf (char*,...) ;
 int Com_Printf (char*,int ,char*) ;
 int Info_SetValueForKey (char*,char*,int ) ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int MAX_OTHER_SERVERS ;
 int MAX_PINGREQUESTS ;
 char* MSG_ReadString (int *) ;



 int NET_AdrToString (TYPE_1__) ;
 int NET_AdrToStringwPort (TYPE_1__) ;
 scalar_t__ NET_CompareAdr (TYPE_1__,TYPE_8__) ;
 int Q_strcat (char*,int,char*) ;
 int Q_strncpyz (char*,char*,int) ;
 scalar_t__ Sys_Milliseconds () ;
 int atoi (char*) ;
 TYPE_6__* cl_pinglist ;
 TYPE_5__ cls ;
 TYPE_4__* com_gamename ;
 TYPE_3__* com_legacyprotocol ;
 TYPE_2__* com_protocol ;
 int qfalse ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 int va (char*,int) ;

void CL_ServerInfoPacket( netadr_t from, msg_t *msg ) {
 int i, type;
 char info[MAX_INFO_STRING];
 char *infoString;
 int prot;
 char *gamename;
 qboolean gameMismatch;

 infoString = MSG_ReadString( msg );


 gamename = Info_ValueForKey( infoString, "gamename" );







  gameMismatch = !*gamename || strcmp(gamename, com_gamename->string) != 0;

 if (gameMismatch)
 {
  Com_DPrintf( "Game mismatch in info packet: %s\n", infoString );
  return;
 }


 prot = atoi( Info_ValueForKey( infoString, "protocol" ) );

 if(prot != com_protocol->integer



   )
 {
  Com_DPrintf( "Different protocol info packet: %s\n", infoString );
  return;
 }


 for (i=0; i<MAX_PINGREQUESTS; i++)
 {
  if ( cl_pinglist[i].adr.port && !cl_pinglist[i].time && NET_CompareAdr( from, cl_pinglist[i].adr ) )
  {

   cl_pinglist[i].time = Sys_Milliseconds() - cl_pinglist[i].start;
   Com_DPrintf( "ping time %dms from %s\n", cl_pinglist[i].time, NET_AdrToString( from ) );


   Q_strncpyz( cl_pinglist[i].info, infoString, sizeof( cl_pinglist[i].info ) );



   switch (from.type)
   {
    case 130:
    case 129:
     type = 1;
     break;
    case 128:
     type = 2;
     break;
    default:
     type = 0;
     break;
   }
   Info_SetValueForKey( cl_pinglist[i].info, "nettype", va("%d", type) );
   CL_SetServerInfoByAddress(from, infoString, cl_pinglist[i].time);

   return;
  }
 }


 if (cls.pingUpdateSource != AS_LOCAL) {
  return;
 }

 for ( i = 0 ; i < MAX_OTHER_SERVERS ; i++ ) {

  if ( cls.localServers[i].adr.port == 0 ) {
   break;
  }


  if ( NET_CompareAdr( from, cls.localServers[i].adr ) ) {
   return;
  }
 }

 if ( i == MAX_OTHER_SERVERS ) {
  Com_DPrintf( "MAX_OTHER_SERVERS hit, dropping infoResponse\n" );
  return;
 }


 cls.numlocalservers = i+1;
 CL_InitServerInfo( &cls.localServers[i], &from );

 Q_strncpyz( info, MSG_ReadString( msg ), MAX_INFO_STRING );
 if (strlen(info)) {
  if (info[strlen(info)-1] != '\n') {
   Q_strcat(info, sizeof(info), "\n");
  }
  Com_Printf( "%s: %s", NET_AdrToStringwPort( from ), info );
 }
}

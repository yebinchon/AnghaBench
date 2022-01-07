
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int adr; scalar_t__ time; int start; } ;
typedef TYPE_1__ ping_t ;
typedef int netadrtype_t ;
typedef int netadr_t ;


 TYPE_1__* CL_GetFreePing () ;
 int CL_SetServerInfoByAddress (int ,int *,int ) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Memset (int *,int ,int) ;
 int Com_Printf (char*) ;
 int NA_IP ;
 int NA_IP6 ;
 int NA_UNSPEC ;
 int NET_OutOfBandPrint (int ,int ,char*) ;
 int NET_StringToAdr (char*,int *,int ) ;
 int NS_CLIENT ;
 int Sys_Milliseconds () ;
 int memcpy (int *,int *,int) ;
 int strcmp (char*,char*) ;

void CL_Ping_f( void ) {
 netadr_t to;
 ping_t* pingptr;
 char* server;
 int argc;
 netadrtype_t family = NA_UNSPEC;

 argc = Cmd_Argc();

 if ( argc != 2 && argc != 3 ) {
  Com_Printf( "usage: ping [-4|-6] server\n");
  return;
 }

 if(argc == 2)
  server = Cmd_Argv(1);
 else
 {
  if(!strcmp(Cmd_Argv(1), "-4"))
   family = NA_IP;
  else if(!strcmp(Cmd_Argv(1), "-6"))
   family = NA_IP6;
  else
   Com_Printf( "warning: only -4 or -6 as address type understood.\n");

  server = Cmd_Argv(2);
 }

 Com_Memset( &to, 0, sizeof(netadr_t) );

 if ( !NET_StringToAdr( server, &to, family ) ) {
  return;
 }

 pingptr = CL_GetFreePing();

 memcpy( &pingptr->adr, &to, sizeof (netadr_t) );
 pingptr->start = Sys_Milliseconds();
 pingptr->time = 0;

 CL_SetServerInfoByAddress(pingptr->adr, ((void*)0), 0);

 NET_OutOfBandPrint( NS_CLIENT, to, "getinfo xxx" );
}

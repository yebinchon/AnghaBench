
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ refreshtime; scalar_t__ nextpingtime; size_t numqueriedservers; size_t numfavoriteaddresses; size_t currentping; char** favoriteaddresses; TYPE_1__* pinglist; } ;
struct TYPE_5__ {scalar_t__ realtime; } ;
struct TYPE_4__ {char* adrstr; int start; } ;


 int AS_LOCAL ;
 int ArenaServers_Insert (char*,char*,int) ;
 int ArenaServers_MaxPing () ;
 int ArenaServers_SourceForLAN () ;
 int ArenaServers_StopRefresh () ;
 int ArenaServers_UpdateMenu () ;
 int EXEC_APPEND ;
 int EXEC_NOW ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_ADDRESSLENGTH ;
 int MAX_INFO_STRING ;
 int MAX_PINGREQUESTS ;
 int Q_stricmp (char*,char*) ;
 scalar_t__ UIAS_FAVORITES ;
 scalar_t__ UIAS_LOCAL ;
 TYPE_3__ g_arenaservers ;
 scalar_t__ g_servertype ;
 int strcpy (char*,char*) ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_LAN_ClearPing (int) ;
 int trap_LAN_GetPing (int,char*,int,int*) ;
 int trap_LAN_GetPingInfo (int,char*,int) ;
 int trap_LAN_GetPingQueueCount () ;
 int trap_LAN_GetServerAddressString (int ,size_t,char*,int) ;
 scalar_t__ trap_LAN_GetServerCount (int ) ;
 TYPE_2__ uis ;
 char* va (char*,char*) ;

__attribute__((used)) static void ArenaServers_DoRefresh( void )
{
 int i;
 int j;
 int time;
 int maxPing;
 char adrstr[MAX_ADDRESSLENGTH];
 char info[MAX_INFO_STRING];

 if (uis.realtime < g_arenaservers.refreshtime)
 {
   if (g_servertype != UIAS_FAVORITES) {
   if (g_servertype == UIAS_LOCAL) {
    if (!trap_LAN_GetServerCount(AS_LOCAL)) {
     return;
    }
   }
   if (trap_LAN_GetServerCount(ArenaServers_SourceForLAN()) < 0) {

     return;
   }
   }
 } else if (g_servertype == UIAS_LOCAL) {
  if (!trap_LAN_GetServerCount(AS_LOCAL)) {

   trap_Cmd_ExecuteText( EXEC_APPEND, "localservers\n" );
   g_arenaservers.refreshtime = uis.realtime + 5000;
   return;
  }
 }

 if (uis.realtime < g_arenaservers.nextpingtime)
 {

  return;
 }


 g_arenaservers.nextpingtime = uis.realtime + 10;


 maxPing = ArenaServers_MaxPing();
 for (i=0; i<MAX_PINGREQUESTS; i++)
 {
  trap_LAN_GetPing( i, adrstr, MAX_ADDRESSLENGTH, &time );
  if (!adrstr[0])
  {

   continue;
  }


  for (j=0; j<MAX_PINGREQUESTS; j++)
   if (!Q_stricmp( adrstr, g_arenaservers.pinglist[j].adrstr ))
    break;

  if (j < MAX_PINGREQUESTS)
  {

   if (!time)
   {
    time = uis.realtime - g_arenaservers.pinglist[j].start;
    if (time < maxPing)
    {

     continue;
    }
   }

   if (time > maxPing)
   {

    info[0] = '\0';
    time = maxPing;


    if (g_servertype == UIAS_FAVORITES) {
     Info_SetValueForKey( info, "hostname", adrstr );
     Info_SetValueForKey( info, "game", "???" );
    }
   }
   else
   {
    trap_LAN_GetPingInfo( i, info, MAX_INFO_STRING );
   }


   ArenaServers_Insert( adrstr, info, time );


   g_arenaservers.pinglist[j].adrstr[0] = '\0';
     }


  trap_LAN_ClearPing( i );
 }



 if (g_servertype == UIAS_FAVORITES) {
   g_arenaservers.numqueriedservers = g_arenaservers.numfavoriteaddresses;
 } else {
   g_arenaservers.numqueriedservers = trap_LAN_GetServerCount(ArenaServers_SourceForLAN());
 }






 for (i=0; i<MAX_PINGREQUESTS && g_arenaservers.currentping < g_arenaservers.numqueriedservers; i++)
 {
  if (trap_LAN_GetPingQueueCount() >= MAX_PINGREQUESTS)
  {

   break;
  }


  for (j=0; j<MAX_PINGREQUESTS; j++)
   if (!g_arenaservers.pinglist[j].adrstr[0])
    break;

  if (j >= MAX_PINGREQUESTS)

   break;



  if (g_servertype == UIAS_FAVORITES) {
    strcpy( adrstr, g_arenaservers.favoriteaddresses[g_arenaservers.currentping] );
  } else {
    trap_LAN_GetServerAddressString(ArenaServers_SourceForLAN(), g_arenaservers.currentping, adrstr, MAX_ADDRESSLENGTH );
  }

  strcpy( g_arenaservers.pinglist[j].adrstr, adrstr );
  g_arenaservers.pinglist[j].start = uis.realtime;

  trap_Cmd_ExecuteText( EXEC_NOW, va( "ping %s\n", adrstr ) );


  g_arenaservers.currentping++;
 }

 if (!trap_LAN_GetPingQueueCount())
 {

  ArenaServers_StopRefresh();
  return;
 }


 ArenaServers_UpdateMenu();
}

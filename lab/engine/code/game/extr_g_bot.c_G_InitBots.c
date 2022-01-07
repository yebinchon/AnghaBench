
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int serverinfo ;
typedef int qboolean ;
typedef int map ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int BOT_BEGIN_DELAY_BASE ;
 int CVAR_SERVERINFO ;
 scalar_t__ GT_SINGLE_PLAYER ;
 char* G_GetArenaInfoByMap (char*) ;
 int G_LoadArenas () ;
 int G_LoadBots () ;
 int G_SpawnBots (char*,int) ;
 char* Info_ValueForKey (char const*,char*) ;
 int MAX_INFO_STRING ;
 int MAX_QPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char*,int) ;
 int atoi (char*) ;
 int bot_minplayers ;
 TYPE_1__ g_gametype ;
 int trap_Cvar_Register (int *,char*,char*,int ) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_GetServerinfo (char*,int) ;

void G_InitBots( qboolean restart ) {
 int fragLimit;
 int timeLimit;
 const char *arenainfo;
 char *strValue;
 int basedelay;
 char map[MAX_QPATH];
 char serverinfo[MAX_INFO_STRING];

 G_LoadBots();
 G_LoadArenas();

 trap_Cvar_Register( &bot_minplayers, "bot_minplayers", "0", CVAR_SERVERINFO );

 if( g_gametype.integer == GT_SINGLE_PLAYER ) {
  trap_GetServerinfo( serverinfo, sizeof(serverinfo) );
  Q_strncpyz( map, Info_ValueForKey( serverinfo, "mapname" ), sizeof(map) );
  arenainfo = G_GetArenaInfoByMap( map );
  if ( !arenainfo ) {
   return;
  }

  strValue = Info_ValueForKey( arenainfo, "fraglimit" );
  fragLimit = atoi( strValue );
  if ( fragLimit ) {
   trap_Cvar_Set( "fraglimit", strValue );
  }
  else {
   trap_Cvar_Set( "fraglimit", "0" );
  }

  strValue = Info_ValueForKey( arenainfo, "timelimit" );
  timeLimit = atoi( strValue );
  if ( timeLimit ) {
   trap_Cvar_Set( "timelimit", strValue );
  }
  else {
   trap_Cvar_Set( "timelimit", "0" );
  }

  if ( !fragLimit && !timeLimit ) {
   trap_Cvar_Set( "fraglimit", "10" );
   trap_Cvar_Set( "timelimit", "0" );
  }

  basedelay = BOT_BEGIN_DELAY_BASE;
  strValue = Info_ValueForKey( arenainfo, "special" );
  if( Q_stricmp( strValue, "training" ) == 0 ) {
   basedelay += 10000;
  }

  if( !restart ) {
   G_SpawnBots( Info_ValueForKey( arenainfo, "bots" ), basedelay );
  }
 }
}

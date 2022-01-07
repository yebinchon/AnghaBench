
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int mapname ;
typedef int expanded ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int CVAR_LATCH ;
 int CVAR_SERVERINFO ;
 int CVAR_USERINFO ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int Cvar_Get (char*,char*,int) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_SetLatched (char*,char*) ;
 int Cvar_SetValue (char*,scalar_t__) ;
 int FS_ReadFile (char*,int *) ;
 scalar_t__ GT_FFA ;
 scalar_t__ GT_SINGLE_PLAYER ;
 int MAX_QPATH ;
 int Q_stricmp (char*,char*) ;
 scalar_t__ Q_stricmpn (char*,char*,int) ;
 int Q_strncpyz (char*,char*,int) ;
 int SV_SpawnServer (char*,scalar_t__) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_1__* sv_gametype ;

__attribute__((used)) static void SV_Map_f( void ) {
 char *cmd;
 char *map;
 qboolean killBots, cheat;
 char expanded[MAX_QPATH];
 char mapname[MAX_QPATH];

 map = Cmd_Argv(1);
 if ( !map ) {
  return;
 }



 Com_sprintf (expanded, sizeof(expanded), "maps/%s.bsp", map);
 if ( FS_ReadFile (expanded, ((void*)0)) == -1 ) {
  Com_Printf ("Can't find map %s\n", expanded);
  return;
 }


 Cvar_Get ("g_gametype", "0", CVAR_SERVERINFO | CVAR_USERINFO | CVAR_LATCH );

 cmd = Cmd_Argv(0);
 if( Q_stricmpn( cmd, "sp", 2 ) == 0 ) {
  Cvar_SetValue( "g_gametype", GT_SINGLE_PLAYER );
  Cvar_SetValue( "g_doWarmup", 0 );

  Cvar_SetLatched( "sv_maxclients", "8" );
  cmd += 2;
  if (!Q_stricmp( cmd, "devmap" ) ) {
   cheat = qtrue;
  } else {
   cheat = qfalse;
  }
  killBots = qtrue;
 }
 else {
  if ( !Q_stricmp( cmd, "devmap" ) ) {
   cheat = qtrue;
   killBots = qtrue;
  } else {
   cheat = qfalse;
   killBots = qfalse;
  }
  if( sv_gametype->integer == GT_SINGLE_PLAYER ) {
   Cvar_SetValue( "g_gametype", GT_FFA );
  }
 }



 Q_strncpyz(mapname, map, sizeof(mapname));


 SV_SpawnServer( mapname, killBots );





 if ( cheat ) {
  Cvar_Set( "sv_cheats", "1" );
 } else {
  Cvar_Set( "sv_cheats", "0" );
 }
}

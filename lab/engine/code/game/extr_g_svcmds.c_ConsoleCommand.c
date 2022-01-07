
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int ConcatArgs (int) ;
 int EXEC_NOW ;
 int MAX_TOKEN_CHARS ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Svcmd_AbortPodium_f () ;
 int Svcmd_AddBot_f () ;
 int Svcmd_AddIP_f () ;
 int Svcmd_BotList_f () ;
 int Svcmd_EntityList_f () ;
 int Svcmd_ForceTeam_f () ;
 int Svcmd_GameMem_f () ;
 int Svcmd_RemoveIP_f () ;
 TYPE_1__ g_dedicated ;
 int qfalse ;
 int qtrue ;
 int trap_Argv (int ,char*,int) ;
 int trap_SendConsoleCommand (int ,char*) ;
 int trap_SendServerCommand (int,int ) ;
 int va (char*,int ) ;

qboolean ConsoleCommand( void ) {
 char cmd[MAX_TOKEN_CHARS];

 trap_Argv( 0, cmd, sizeof( cmd ) );

 if ( Q_stricmp (cmd, "entitylist") == 0 ) {
  Svcmd_EntityList_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "forceteam") == 0 ) {
  Svcmd_ForceTeam_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "game_memory") == 0) {
  Svcmd_GameMem_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "addbot") == 0) {
  Svcmd_AddBot_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "botlist") == 0) {
  Svcmd_BotList_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "abort_podium") == 0) {
  Svcmd_AbortPodium_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "addip") == 0) {
  Svcmd_AddIP_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "removeip") == 0) {
  Svcmd_RemoveIP_f();
  return qtrue;
 }

 if (Q_stricmp (cmd, "listip") == 0) {
  trap_SendConsoleCommand( EXEC_NOW, "g_banIPs\n" );
  return qtrue;
 }

 if (g_dedicated.integer) {
  if (Q_stricmp (cmd, "say") == 0) {
   trap_SendServerCommand( -1, va("print \"server: %s\n\"", ConcatArgs(1) ) );
   return qtrue;
  }

  trap_SendServerCommand( -1, va("print \"server: %s\n\"", ConcatArgs(0) ) );
  return qtrue;
 }

 return qfalse;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int shader3 ;
typedef int shader2 ;
typedef int shader1 ;
struct TYPE_8__ {int levelShot; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_5__ {int talkSound; int votePassed; int voteFailed; } ;
struct TYPE_6__ {scalar_t__ gametype; TYPE_1__ media; } ;


 int BIGCHAR_WIDTH ;
 int CG_AddToTeamChat (char*) ;
 char const* CG_Argv (int) ;
 int CG_CenterPrint (char const*,double,int ) ;
 int CG_ConfigStringModified () ;
 int CG_LoadDeferredPlayers () ;
 int CG_MapRestart () ;
 int CG_ParseScores () ;
 int CG_ParseTeamInfo () ;
 int CG_Printf (char*,char const*) ;
 int CG_RemoveChatEscapeChar (char*) ;
 int CG_VoiceChat (int ) ;
 int CHAN_ANNOUNCER ;
 int CHAN_LOCAL_SOUND ;
 scalar_t__ GT_TEAM ;
 int MAX_QPATH ;
 int MAX_SAY_TEXT ;
 scalar_t__ Q_stricmp (char const*,char*) ;
 int Q_stricmpn (char const*,char*,int) ;
 int Q_strncpyz (char*,char const*,int) ;
 int SAY_ALL ;
 int SAY_TEAM ;
 int SAY_TELL ;
 double SCREEN_HEIGHT ;
 TYPE_4__ cg ;
 TYPE_3__ cg_teamChatsOnly ;
 TYPE_2__ cgs ;
 int qtrue ;
 int strcmp (char const*,char*) ;
 int trap_Argc () ;
 int trap_R_RemapShader (char*,char*,char*) ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static void CG_ServerCommand( void ) {
 const char *cmd;
 char text[MAX_SAY_TEXT];

 cmd = CG_Argv(0);

 if ( !cmd[0] ) {

  return;
 }

 if ( !strcmp( cmd, "cp" ) ) {
  CG_CenterPrint( CG_Argv(1), SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );
  return;
 }

 if ( !strcmp( cmd, "cs" ) ) {
  CG_ConfigStringModified();
  return;
 }

 if ( !strcmp( cmd, "print" ) ) {
  CG_Printf( "%s", CG_Argv(1) );
  return;
 }

 if ( !strcmp( cmd, "chat" ) ) {
  if ( cgs.gametype >= GT_TEAM && cg_teamChatsOnly.integer ) {
   return;
  }

  trap_S_StartLocalSound( cgs.media.talkSound, CHAN_LOCAL_SOUND );
  Q_strncpyz( text, CG_Argv(1), MAX_SAY_TEXT );
  CG_RemoveChatEscapeChar( text );
  CG_Printf( "%s\n", text );
  return;
 }

 if ( !strcmp( cmd, "tchat" ) ) {
  trap_S_StartLocalSound( cgs.media.talkSound, CHAN_LOCAL_SOUND );
  Q_strncpyz( text, CG_Argv(1), MAX_SAY_TEXT );
  CG_RemoveChatEscapeChar( text );
  CG_AddToTeamChat( text );
  CG_Printf( "%s\n", text );
  return;
 }
 if ( !strcmp( cmd, "scores" ) ) {
  CG_ParseScores();
  return;
 }

 if ( !strcmp( cmd, "tinfo" ) ) {
  CG_ParseTeamInfo();
  return;
 }

 if ( !strcmp( cmd, "map_restart" ) ) {
  CG_MapRestart();
  return;
 }

 if ( Q_stricmp (cmd, "remapShader") == 0 )
 {
  if (trap_Argc() == 4)
  {
   char shader1[MAX_QPATH];
   char shader2[MAX_QPATH];
   char shader3[MAX_QPATH];

   Q_strncpyz(shader1, CG_Argv(1), sizeof(shader1));
   Q_strncpyz(shader2, CG_Argv(2), sizeof(shader2));
   Q_strncpyz(shader3, CG_Argv(3), sizeof(shader3));

   trap_R_RemapShader(shader1, shader2, shader3);
  }

  return;
 }


 if ( !strcmp( cmd, "loaddefered" ) ) {
  CG_LoadDeferredPlayers();
  return;
 }



 if ( !strcmp( cmd, "clientLevelShot" ) ) {
  cg.levelShot = qtrue;
  return;
 }

 CG_Printf( "Unknown client game command: %s\n", cmd );
}

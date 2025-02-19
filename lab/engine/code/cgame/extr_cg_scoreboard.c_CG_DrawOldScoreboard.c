
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_18__ {scalar_t__ client; } ;
struct TYPE_10__ {scalar_t__ pm_type; } ;
struct TYPE_17__ {int deferredPlayerLoading; scalar_t__* teamScores; int numScores; TYPE_9__* scores; TYPE_3__* snap; scalar_t__* killerName; int scoreFadeTime; TYPE_1__ predictedPlayerState; scalar_t__ showScores; scalar_t__ warmup; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_13__ {int scoreboardName; int scoreboardTime; int scoreboardPing; int scoreboardScore; } ;
struct TYPE_14__ {scalar_t__ gametype; TYPE_4__ media; } ;
struct TYPE_11__ {scalar_t__* persistant; scalar_t__ clientNum; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;


 scalar_t__ BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,int,char*,float) ;
 int CG_DrawClientScore (int,TYPE_9__*,float*,float,int) ;
 int CG_DrawPic (scalar_t__,int,int,int,int ) ;
 int CG_DrawStrlen (char*) ;
 int CG_DrawTeamBackground (int ,int,int,int,float,scalar_t__) ;
 float* CG_FadeColor (int ,int ) ;
 int CG_LoadDeferredPlayers () ;
 scalar_t__ CG_PlaceString (scalar_t__) ;
 int CG_TeamScoreboard (int,scalar_t__,float,int,int) ;
 int FADE_TIME ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TEAM ;
 size_t PERS_RANK ;
 size_t PERS_SCORE ;
 size_t PERS_TEAM ;
 scalar_t__ PM_DEAD ;
 scalar_t__ PM_INTERMISSION ;
 int SB_HEADER ;
 int SB_INTER_HEIGHT ;
 int SB_MAXCLIENTS_INTER ;
 int SB_MAXCLIENTS_NORMAL ;
 scalar_t__ SB_NAME_X ;
 int SB_NORMAL_HEIGHT ;
 scalar_t__ SB_PING_X ;
 int SB_RATING_WIDTH ;
 scalar_t__ SB_SCORE_X ;
 scalar_t__ SB_TIME_X ;
 int SB_TOP ;
 int SCREEN_WIDTH ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_FREE ;
 scalar_t__ TEAM_RED ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_8__ cg ;
 TYPE_7__ cg_paused ;
 TYPE_6__ cg_showScoreboard ;
 TYPE_5__ cgs ;
 float* colorWhite ;
 int localClient ;
 int qfalse ;
 int qtrue ;
 char* va (char*,scalar_t__,...) ;

qboolean CG_DrawOldScoreboard( void ) {
 int x, y, w, i, n1, n2;
 float fade;
 float *fadeColor;
 char *s;
 int maxClients;
 int lineHeight;
 int topBorderSize, bottomBorderSize;


 if ( cg_paused.integer ) {
  cg.deferredPlayerLoading = 0;
  return qfalse;
 }

 if ( cg_showScoreboard.integer == 0 ) {
  return qfalse;
 }

 if ( cgs.gametype == GT_SINGLE_PLAYER && cg.predictedPlayerState.pm_type == PM_INTERMISSION ) {
  cg.deferredPlayerLoading = 0;
  return qfalse;
 }


 if ( cg.warmup && !cg.showScores ) {
  return qfalse;
 }

 if ( cg.showScores || cg.predictedPlayerState.pm_type == PM_DEAD ||
   cg.predictedPlayerState.pm_type == PM_INTERMISSION ) {
  fade = 1.0;
  fadeColor = colorWhite;
 } else {
  fadeColor = CG_FadeColor( cg.scoreFadeTime, FADE_TIME );

  if ( !fadeColor ) {

   cg.deferredPlayerLoading = 0;
   cg.killerName[0] = 0;
   return qfalse;
  }
  fade = *fadeColor;
 }



 if ( cg.killerName[0] ) {
  s = va("Tagged by %s", cg.killerName );
  w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;
  x = ( SCREEN_WIDTH - w ) / 2;
  y = 40;
  CG_DrawBigString( x, y, s, fade );
 }


 if ( cgs.gametype < GT_TEAM) {
  if (cg.snap->ps.persistant[PERS_TEAM] != TEAM_SPECTATOR ) {
   s = va("%s place with %i",
    CG_PlaceString( cg.snap->ps.persistant[PERS_RANK] + 1 ),
    cg.snap->ps.persistant[PERS_SCORE] );
   w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;
   x = ( SCREEN_WIDTH - w ) / 2;
   y = 60;
   CG_DrawBigString( x, y, s, fade );
  }
 } else {
  if ( cg.teamScores[0] == cg.teamScores[1] ) {
   s = va("Teams are tied at %i", cg.teamScores[0] );
  } else if ( cg.teamScores[0] >= cg.teamScores[1] ) {
   s = va("Red leads %i to %i",cg.teamScores[0], cg.teamScores[1] );
  } else {
   s = va("Blue leads %i to %i",cg.teamScores[1], cg.teamScores[0] );
  }

  w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;
  x = ( SCREEN_WIDTH - w ) / 2;
  y = 60;
  CG_DrawBigString( x, y, s, fade );
 }


 y = SB_HEADER;

 CG_DrawPic( SB_SCORE_X + (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardScore );
 CG_DrawPic( SB_PING_X - (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardPing );
 CG_DrawPic( SB_TIME_X - (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardTime );
 CG_DrawPic( SB_NAME_X - (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardName );

 y = SB_TOP;


 if ( cg.numScores > SB_MAXCLIENTS_NORMAL ) {
  maxClients = SB_MAXCLIENTS_INTER;
  lineHeight = SB_INTER_HEIGHT;
  topBorderSize = 8;
  bottomBorderSize = 16;
 } else {
  maxClients = SB_MAXCLIENTS_NORMAL;
  lineHeight = SB_NORMAL_HEIGHT;
  topBorderSize = 16;
  bottomBorderSize = 16;
 }

 localClient = qfalse;

 if ( cgs.gametype >= GT_TEAM ) {



  y += lineHeight/2;

  if ( cg.teamScores[0] >= cg.teamScores[1] ) {
   n1 = CG_TeamScoreboard( y, TEAM_RED, fade, maxClients, lineHeight );
   CG_DrawTeamBackground( 0, y - topBorderSize, 640, n1 * lineHeight + bottomBorderSize, 0.33f, TEAM_RED );
   y += (n1 * lineHeight) + BIGCHAR_HEIGHT;
   maxClients -= n1;
   n2 = CG_TeamScoreboard( y, TEAM_BLUE, fade, maxClients, lineHeight );
   CG_DrawTeamBackground( 0, y - topBorderSize, 640, n2 * lineHeight + bottomBorderSize, 0.33f, TEAM_BLUE );
   y += (n2 * lineHeight) + BIGCHAR_HEIGHT;
   maxClients -= n2;
  } else {
   n1 = CG_TeamScoreboard( y, TEAM_BLUE, fade, maxClients, lineHeight );
   CG_DrawTeamBackground( 0, y - topBorderSize, 640, n1 * lineHeight + bottomBorderSize, 0.33f, TEAM_BLUE );
   y += (n1 * lineHeight) + BIGCHAR_HEIGHT;
   maxClients -= n1;
   n2 = CG_TeamScoreboard( y, TEAM_RED, fade, maxClients, lineHeight );
   CG_DrawTeamBackground( 0, y - topBorderSize, 640, n2 * lineHeight + bottomBorderSize, 0.33f, TEAM_RED );
   y += (n2 * lineHeight) + BIGCHAR_HEIGHT;
   maxClients -= n2;
  }
  n1 = CG_TeamScoreboard( y, TEAM_SPECTATOR, fade, maxClients, lineHeight );
  y += (n1 * lineHeight) + BIGCHAR_HEIGHT;

 } else {



  n1 = CG_TeamScoreboard( y, TEAM_FREE, fade, maxClients, lineHeight );
  y += (n1 * lineHeight) + BIGCHAR_HEIGHT;
  n2 = CG_TeamScoreboard( y, TEAM_SPECTATOR, fade, maxClients - n1, lineHeight );
  y += (n2 * lineHeight) + BIGCHAR_HEIGHT;
 }

 if (!localClient) {

  for ( i = 0 ; i < cg.numScores ; i++ ) {
   if ( cg.scores[i].client == cg.snap->ps.clientNum ) {
    CG_DrawClientScore( y, &cg.scores[i], fadeColor, fade, lineHeight == SB_NORMAL_HEIGHT );
    break;
   }
  }
 }


 if ( ++cg.deferredPlayerLoading > 10 ) {
  CG_LoadDeferredPlayers();
 }

 return qtrue;
}

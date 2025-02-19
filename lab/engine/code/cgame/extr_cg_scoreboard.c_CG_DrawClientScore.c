
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int string ;
struct TYPE_13__ {size_t client; int ping; int time; int score; } ;
typedef TYPE_4__ score_t ;
typedef scalar_t__ qboolean ;
struct TYPE_14__ {int powerups; int botSkill; int handicap; scalar_t__ teamTask; scalar_t__ team; int name; int losses; int wins; } ;
typedef TYPE_5__ clientInfo_t ;
struct TYPE_17__ {TYPE_2__* snap; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_12__ {int defendShader; int assaultShader; int * botSkillShaders; } ;
struct TYPE_15__ {size_t maxclients; scalar_t__ gametype; TYPE_3__ media; TYPE_5__* clientinfo; } ;
struct TYPE_10__ {size_t clientNum; scalar_t__* persistant; int* stats; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;


 int BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,int,char*,float) ;
 int CG_DrawBigStringColor (int,int,char*,float*) ;
 int CG_DrawFlagModel (int,int,int,int,int ,int ) ;
 int CG_DrawHead (int,int,int,int,size_t,int*) ;
 int CG_DrawPic (int,int,int,int,int ) ;
 int CG_DrawSmallStringColor (int,int,char*,float*) ;
 int CG_FillRect (int,int,int,int,float*) ;
 int Com_Printf (char*,size_t) ;
 int Com_sprintf (char*,int,char*,int,...) ;
 scalar_t__ GT_TEAM ;
 scalar_t__ GT_TOURNAMENT ;
 int ICON_SIZE ;
 size_t PERS_RANK ;
 size_t PERS_TEAM ;
 int PW_BLUEFLAG ;
 int PW_NEUTRALFLAG ;
 int PW_REDFLAG ;
 int RANK_TIED_FLAG ;
 int SB_BOTICON_X ;
 int SB_HEAD_X ;
 int SB_RATING_WIDTH ;
 int SB_SCORELINE_X ;
 int SMALLCHAR_HEIGHT ;
 size_t STAT_CLIENTS_READY ;
 scalar_t__ TEAMTASK_DEFENSE ;
 scalar_t__ TEAMTASK_NONE ;
 scalar_t__ TEAMTASK_OFFENSE ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 scalar_t__ TEAM_SPECTATOR ;
 int VectorClear (int*) ;
 size_t YAW ;
 TYPE_8__ cg ;
 TYPE_7__ cg_drawIcons ;
 TYPE_6__ cgs ;
 int localClient ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void CG_DrawClientScore( int y, score_t *score, float *color, float fade, qboolean largeFormat ) {
 char string[1024];
 vec3_t headAngles;
 clientInfo_t *ci;
 int iconx, headx;

 if ( score->client < 0 || score->client >= cgs.maxclients ) {
  Com_Printf( "Bad score->client: %i\n", score->client );
  return;
 }

 ci = &cgs.clientinfo[score->client];

 iconx = SB_BOTICON_X + (SB_RATING_WIDTH / 2);
 headx = SB_HEAD_X + (SB_RATING_WIDTH / 2);


 if ( ci->powerups & ( 1 << PW_NEUTRALFLAG ) ) {
  if( largeFormat ) {
   CG_DrawFlagModel( iconx, y - ( 32 - BIGCHAR_HEIGHT ) / 2, 32, 32, TEAM_FREE, qfalse );
  }
  else {
   CG_DrawFlagModel( iconx, y, 16, 16, TEAM_FREE, qfalse );
  }
 } else if ( ci->powerups & ( 1 << PW_REDFLAG ) ) {
  if( largeFormat ) {
   CG_DrawFlagModel( iconx, y - ( 32 - BIGCHAR_HEIGHT ) / 2, 32, 32, TEAM_RED, qfalse );
  }
  else {
   CG_DrawFlagModel( iconx, y, 16, 16, TEAM_RED, qfalse );
  }
 } else if ( ci->powerups & ( 1 << PW_BLUEFLAG ) ) {
  if( largeFormat ) {
   CG_DrawFlagModel( iconx, y - ( 32 - BIGCHAR_HEIGHT ) / 2, 32, 32, TEAM_BLUE, qfalse );
  }
  else {
   CG_DrawFlagModel( iconx, y, 16, 16, TEAM_BLUE, qfalse );
  }
 } else {
  if ( ci->botSkill > 0 && ci->botSkill <= 5 ) {
   if ( cg_drawIcons.integer ) {
    if( largeFormat ) {
     CG_DrawPic( iconx, y - ( 32 - BIGCHAR_HEIGHT ) / 2, 32, 32, cgs.media.botSkillShaders[ ci->botSkill - 1 ] );
    }
    else {
     CG_DrawPic( iconx, y, 16, 16, cgs.media.botSkillShaders[ ci->botSkill - 1 ] );
    }
   }
  } else if ( ci->handicap < 100 ) {
   Com_sprintf( string, sizeof( string ), "%i", ci->handicap );
   if ( cgs.gametype == GT_TOURNAMENT )
    CG_DrawSmallStringColor( iconx, y - SMALLCHAR_HEIGHT/2, string, color );
   else
    CG_DrawSmallStringColor( iconx, y, string, color );
  }


  if ( cgs.gametype == GT_TOURNAMENT ) {
   Com_sprintf( string, sizeof( string ), "%i/%i", ci->wins, ci->losses );
   if( ci->handicap < 100 && !ci->botSkill ) {
    CG_DrawSmallStringColor( iconx, y + SMALLCHAR_HEIGHT/2, string, color );
   }
   else {
    CG_DrawSmallStringColor( iconx, y, string, color );
   }
  }
 }


 VectorClear( headAngles );
 headAngles[YAW] = 180;
 if( largeFormat ) {
  CG_DrawHead( headx, y - ( ICON_SIZE - BIGCHAR_HEIGHT ) / 2, ICON_SIZE, ICON_SIZE,
   score->client, headAngles );
 }
 else {
  CG_DrawHead( headx, y, 16, 16, score->client, headAngles );
 }
 if ( score->ping == -1 ) {
  Com_sprintf(string, sizeof(string),
   " connecting    %s", ci->name);
 } else if ( ci->team == TEAM_SPECTATOR ) {
  Com_sprintf(string, sizeof(string),
   " SPECT %3i %4i %s", score->ping, score->time, ci->name);
 } else {
  Com_sprintf(string, sizeof(string),
   "%5i %4i %4i %s", score->score, score->ping, score->time, ci->name);
 }


 if ( score->client == cg.snap->ps.clientNum ) {
  float hcolor[4];
  int rank;

  localClient = qtrue;

  if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR
   || cgs.gametype >= GT_TEAM ) {
   rank = -1;
  } else {
   rank = cg.snap->ps.persistant[PERS_RANK] & ~RANK_TIED_FLAG;
  }
  if ( rank == 0 ) {
   hcolor[0] = 0;
   hcolor[1] = 0;
   hcolor[2] = 0.7f;
  } else if ( rank == 1 ) {
   hcolor[0] = 0.7f;
   hcolor[1] = 0;
   hcolor[2] = 0;
  } else if ( rank == 2 ) {
   hcolor[0] = 0.7f;
   hcolor[1] = 0.7f;
   hcolor[2] = 0;
  } else {
   hcolor[0] = 0.7f;
   hcolor[1] = 0.7f;
   hcolor[2] = 0.7f;
  }

  hcolor[3] = fade * 0.7;
  CG_FillRect( SB_SCORELINE_X + BIGCHAR_WIDTH + (SB_RATING_WIDTH / 2), y,
   640 - SB_SCORELINE_X - BIGCHAR_WIDTH, BIGCHAR_HEIGHT+1, hcolor );
 }

 CG_DrawBigString( SB_SCORELINE_X + (SB_RATING_WIDTH / 2), y, string, fade );


 if ( cg.snap->ps.stats[ STAT_CLIENTS_READY ] & ( 1 << score->client ) ) {
  CG_DrawBigStringColor( iconx, y, "READY", color );
 }
}

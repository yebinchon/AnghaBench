
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec4_t ;
struct TYPE_4__ {scalar_t__ team; char const* name; int score; int infoValid; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_6__ {int scoresRequestTime; int time; int * teamScores; } ;
struct TYPE_5__ {scalar_t__ gametype; TYPE_1__* clientinfo; } ;


 int CG_CenterGiantLine (int,char const*) ;
 char* CG_ConfigString (int ) ;
 int CG_DrawStringExt (int,int,char const*,int*,int ,int ,int,int ,int ) ;
 int CG_FillRect (int ,int ,int ,int ,int*) ;
 int CS_MOTD ;
 int GIANT_HEIGHT ;
 int GIANT_WIDTH ;
 scalar_t__ GT_TEAM ;
 int MAX_CLIENTS ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 scalar_t__ TEAM_FREE ;
 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 int qtrue ;
 int strlen (char const*) ;
 int trap_SendClientCommand (char*) ;
 char* va (char*,int,...) ;

void CG_DrawTourneyScoreboard( void ) {
 const char *s;
 vec4_t color;
 int min, tens, ones;
 clientInfo_t *ci;
 int y;
 int i;


 if ( cg.scoresRequestTime + 2000 < cg.time ) {
  cg.scoresRequestTime = cg.time;
  trap_SendClientCommand( "score" );
 }


 color[0] = color[1] = color[2] = 0;
 color[3] = 1;
 CG_FillRect( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, color );

 color[0] = 1;
 color[1] = 1;
 color[2] = 1;
 color[3] = 1;


 s = CG_ConfigString( CS_MOTD );
 if ( !s[0] ) {
  s = "Scoreboard";
 }


 CG_CenterGiantLine( 8, s );


 ones = cg.time / 1000;
 min = ones / 60;
 ones %= 60;
 tens = ones / 10;
 ones %= 10;
 s = va("%i:%i%i", min, tens, ones );

 CG_CenterGiantLine( 64, s );




 y = 160;
 if ( cgs.gametype >= GT_TEAM ) {



  CG_DrawStringExt( 8, y, "Red Team", color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
  s = va("%i", cg.teamScores[0] );
  CG_DrawStringExt( 632 - GIANT_WIDTH * strlen(s), y, s, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );

  y += 64;

  CG_DrawStringExt( 8, y, "Blue Team", color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
  s = va("%i", cg.teamScores[1] );
  CG_DrawStringExt( 632 - GIANT_WIDTH * strlen(s), y, s, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
 } else {



  for ( i = 0 ; i < MAX_CLIENTS ; i++ ) {
   ci = &cgs.clientinfo[i];
   if ( !ci->infoValid ) {
    continue;
   }
   if ( ci->team != TEAM_FREE ) {
    continue;
   }

   CG_DrawStringExt( 8, y, ci->name, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
   s = va("%i", ci->score );
   CG_DrawStringExt( 632 - GIANT_WIDTH * strlen(s), y, s, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
   y += 64;
  }
 }


}

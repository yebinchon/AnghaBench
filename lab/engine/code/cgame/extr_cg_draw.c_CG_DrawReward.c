
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {int rewardStack; int* rewardCount; int * rewardShader; int * rewardSound; int rewardTime; int time; } ;
struct TYPE_3__ {int integer; } ;


 int CG_DrawPic (float,float,int,int,int ) ;
 int CG_DrawStringExt (float,float,char*,float*,int ,int ,int,int ,int ) ;
 int CG_DrawStrlen (char*) ;
 float* CG_FadeColor (int ,int ) ;
 int CHAN_ANNOUNCER ;
 int Com_sprintf (char*,int,char*,int) ;
 int ICON_SIZE ;
 int REWARD_TIME ;
 int SCREEN_WIDTH ;
 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 TYPE_2__ cg ;
 TYPE_1__ cg_drawRewards ;
 int qfalse ;
 int qtrue ;
 int trap_R_SetColor (float*) ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static void CG_DrawReward( void ) {
 float *color;
 int i, count;
 float x, y;
 char buf[32];

 if ( !cg_drawRewards.integer ) {
  return;
 }

 color = CG_FadeColor( cg.rewardTime, REWARD_TIME );
 if ( !color ) {
  if (cg.rewardStack > 0) {
   for(i = 0; i < cg.rewardStack; i++) {
    cg.rewardSound[i] = cg.rewardSound[i+1];
    cg.rewardShader[i] = cg.rewardShader[i+1];
    cg.rewardCount[i] = cg.rewardCount[i+1];
   }
   cg.rewardTime = cg.time;
   cg.rewardStack--;
   color = CG_FadeColor( cg.rewardTime, REWARD_TIME );
   trap_S_StartLocalSound(cg.rewardSound[0], CHAN_ANNOUNCER);
  } else {
   return;
  }
 }

 trap_R_SetColor( color );
 if ( cg.rewardCount[0] >= 10 ) {
  y = 56;
  x = 320 - ICON_SIZE/2;
  CG_DrawPic( x, y, ICON_SIZE-4, ICON_SIZE-4, cg.rewardShader[0] );
  Com_sprintf(buf, sizeof(buf), "%d", cg.rewardCount[0]);
  x = ( SCREEN_WIDTH - SMALLCHAR_WIDTH * CG_DrawStrlen( buf ) ) / 2;
  CG_DrawStringExt( x, y+ICON_SIZE, buf, color, qfalse, qtrue,
        SMALLCHAR_WIDTH, SMALLCHAR_HEIGHT, 0 );
 }
 else {

  count = cg.rewardCount[0];

  y = 56;
  x = 320 - count * ICON_SIZE/2;
  for ( i = 0 ; i < count ; i++ ) {
   CG_DrawPic( x, y, ICON_SIZE-4, ICON_SIZE-4, cg.rewardShader[0] );
   x += ICON_SIZE;
  }
 }
 trap_R_SetColor( ((void*)0) );
}

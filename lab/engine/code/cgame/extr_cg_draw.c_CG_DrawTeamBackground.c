
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_16__ {double value; } ;
struct TYPE_15__ {double value; } ;
struct TYPE_14__ {double value; } ;
struct TYPE_13__ {double value; } ;
struct TYPE_12__ {double value; } ;
struct TYPE_11__ {double value; } ;
struct TYPE_9__ {int teamStatusBar; } ;
struct TYPE_10__ {TYPE_1__ media; } ;


 int CG_DrawPic (int,int,int,int,int ) ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 TYPE_8__ cg_blueteam_b ;
 TYPE_7__ cg_blueteam_g ;
 TYPE_6__ cg_blueteam_r ;
 TYPE_5__ cg_redteam_b ;
 TYPE_4__ cg_redteam_g ;
 TYPE_3__ cg_redteam_r ;
 TYPE_2__ cgs ;
 int trap_R_SetColor (double*) ;

void CG_DrawTeamBackground( int x, int y, int w, int h, float alpha, int team )
{
 vec4_t hcolor;

 hcolor[3] = alpha;
 if ( team == TEAM_RED ) {
  hcolor[0] = cg_redteam_r.value / 255.0;
  hcolor[1] = cg_redteam_g.value / 255.0;
  hcolor[2] = cg_redteam_b.value / 255.0;
 } else if ( team == TEAM_BLUE ) {
  hcolor[0] = cg_blueteam_r.value / 255.0;
  hcolor[1] = cg_blueteam_g.value / 255.0;
  hcolor[2] = cg_blueteam_b.value / 255.0;
 } else {
  return;
 }
 trap_R_SetColor( hcolor );
 CG_DrawPic( x, y, w, h, cgs.media.teamStatusBar );
 trap_R_SetColor( ((void*)0) );
}

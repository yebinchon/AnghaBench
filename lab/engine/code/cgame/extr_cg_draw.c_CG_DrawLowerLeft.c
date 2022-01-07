
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {scalar_t__ gametype; } ;


 int CG_DrawPickupItem (float) ;
 float CG_DrawTeamOverlay (float,int ,int ) ;
 scalar_t__ GT_TEAM ;
 float ICON_SIZE ;
 TYPE_2__ cg_drawTeamOverlay ;
 TYPE_1__ cgs ;
 int qfalse ;

__attribute__((used)) static void CG_DrawLowerLeft( void ) {
 float y;

 y = 480 - ICON_SIZE;

 if ( cgs.gametype >= GT_TEAM && cg_drawTeamOverlay.integer == 3 ) {
  y = CG_DrawTeamOverlay( y, qfalse, qfalse );
 }


 CG_DrawPickupItem( y );
}

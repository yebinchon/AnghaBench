
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* powerups; } ;
struct TYPE_4__ {TYPE_1__ predictedPlayerState; } ;


 int CG_DrawStatusBarFlag (scalar_t__,int ) ;
 int CG_DrawStatusBarHead (scalar_t__) ;
 int CHAR_WIDTH ;
 scalar_t__ ICON_SIZE ;
 size_t PW_BLUEFLAG ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 scalar_t__ TEXT_ICON_SPACE ;
 TYPE_2__ cg ;

__attribute__((used)) static void CG_DrawStatusBarReduced( void ) {
 CG_DrawStatusBarHead( 185 + CHAR_WIDTH*3 + TEXT_ICON_SPACE );

 if( cg.predictedPlayerState.powerups[PW_REDFLAG] ) {
  CG_DrawStatusBarFlag( 185 + CHAR_WIDTH*3 + TEXT_ICON_SPACE + ICON_SIZE, TEAM_RED );
 } else if( cg.predictedPlayerState.powerups[PW_BLUEFLAG] ) {
  CG_DrawStatusBarFlag( 185 + CHAR_WIDTH*3 + TEXT_ICON_SPACE + ICON_SIZE, TEAM_BLUE );
 } else if( cg.predictedPlayerState.powerups[PW_NEUTRALFLAG] ) {
  CG_DrawStatusBarFlag( 185 + CHAR_WIDTH*3 + TEXT_ICON_SPACE + ICON_SIZE, TEAM_FREE );
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_SHOT_FIRED ;
 int QGR_KEY_SHOT_FIRED_BFG ;
 int QGR_KEY_SHOT_FIRED_GRAPPLE ;
 int QGR_KEY_SHOT_FIRED_GRENADE ;
 int QGR_KEY_SHOT_FIRED_LIGHTNING ;
 int QGR_KEY_SHOT_FIRED_MACHINEGUN ;
 int QGR_KEY_SHOT_FIRED_PLASMA ;
 int QGR_KEY_SHOT_FIRED_RAILGUN ;
 int QGR_KEY_SHOT_FIRED_ROCKET ;
 int QGR_KEY_SHOT_FIRED_SHOTGUN ;

 int WP_GAUNTLET ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankFireWeapon( int self, int weapon )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 if( weapon == WP_GAUNTLET )
 {

  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED, 1, 1 );

 switch( weapon )
 {
 case 132:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_MACHINEGUN, 1, 1 );
  break;
 case 128:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_SHOTGUN, 1, 1 );
  break;
 case 134:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_GRENADE, 1, 1 );
  break;
 case 129:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_ROCKET, 1, 1 );
  break;
 case 133:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_LIGHTNING, 1, 1 );
  break;
 case 130:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_RAILGUN, 1, 1 );
  break;
 case 131:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_PLASMA, 1, 1 );
  break;
 case 136:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_BFG, 1, 1 );
  break;
 case 135:
  trap_RankReportInt( self, -1, QGR_KEY_SHOT_FIRED_GRAPPLE, 1, 1 );
  break;
 default:
  break;
 }
}

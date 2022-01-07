
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_PICKUP_BFG ;
 int QGR_KEY_PICKUP_GAUNTLET ;
 int QGR_KEY_PICKUP_GRAPPLE ;
 int QGR_KEY_PICKUP_GRENADE ;
 int QGR_KEY_PICKUP_LIGHTNING ;
 int QGR_KEY_PICKUP_MACHINEGUN ;
 int QGR_KEY_PICKUP_PLASMA ;
 int QGR_KEY_PICKUP_RAILGUN ;
 int QGR_KEY_PICKUP_ROCKET ;
 int QGR_KEY_PICKUP_SHOTGUN ;
 int QGR_KEY_PICKUP_WEAPON ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankPickupWeapon( int self, int weapon )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_PICKUP_WEAPON, 1, 1 );
 switch( weapon )
 {
 case 136:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_GAUNTLET, 1, 1 );
  break;
 case 132:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_MACHINEGUN, 1, 1 );
  break;
 case 128:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_SHOTGUN, 1, 1 );
  break;
 case 134:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_GRENADE, 1, 1 );
  break;
 case 129:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_ROCKET, 1, 1 );
  break;
 case 133:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_LIGHTNING, 1, 1 );
  break;
 case 130:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_RAILGUN, 1, 1 );
  break;
 case 131:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_PLASMA, 1, 1 );
  break;
 case 137:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_BFG, 1, 1 );
  break;
 case 135:
  trap_RankReportInt( self, -1, QGR_KEY_PICKUP_GRAPPLE, 1, 1 );
  break;
 default:
  break;
 }
}

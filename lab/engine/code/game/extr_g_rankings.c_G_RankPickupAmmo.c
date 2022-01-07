
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_BOXES ;
 int QGR_KEY_BOXES_BFG_AMMO ;
 int QGR_KEY_BOXES_BULLETS ;
 int QGR_KEY_BOXES_CELLS ;
 int QGR_KEY_BOXES_GRENADES ;
 int QGR_KEY_BOXES_LG_AMMO ;
 int QGR_KEY_BOXES_ROCKETS ;
 int QGR_KEY_BOXES_SHELLS ;
 int QGR_KEY_BOXES_SLUGS ;
 int QGR_KEY_ROUNDS ;
 int QGR_KEY_ROUNDS_BFG_AMMO ;
 int QGR_KEY_ROUNDS_BULLETS ;
 int QGR_KEY_ROUNDS_CELLS ;
 int QGR_KEY_ROUNDS_GRENADES ;
 int QGR_KEY_ROUNDS_LG_AMMO ;
 int QGR_KEY_ROUNDS_ROCKETS ;
 int QGR_KEY_ROUNDS_SHELLS ;
 int QGR_KEY_ROUNDS_SLUGS ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankPickupAmmo( int self, int weapon, int quantity )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_BOXES, 1, 1 );
 trap_RankReportInt( self, -1, QGR_KEY_ROUNDS, quantity, 1 );

 switch( weapon )
 {
 case 132:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_BULLETS, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_BULLETS, quantity, 1 );
  break;
 case 128:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_SHELLS, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_SHELLS, quantity, 1 );
  break;
 case 134:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_GRENADES, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_GRENADES, quantity, 1 );
  break;
 case 129:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_ROCKETS, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_ROCKETS, quantity, 1 );
  break;
 case 133:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_LG_AMMO, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_LG_AMMO, quantity, 1 );
  break;
 case 130:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_SLUGS, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_SLUGS, quantity, 1 );
  break;
 case 131:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_CELLS, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_CELLS, quantity, 1 );
  break;
 case 135:
  trap_RankReportInt( self, -1, QGR_KEY_BOXES_BFG_AMMO, 1, 1 );
  trap_RankReportInt( self, -1, QGR_KEY_ROUNDS_BFG_AMMO, quantity, 1 );
  break;
 default:
  break;
 }
}

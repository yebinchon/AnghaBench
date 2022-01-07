
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int ENTITYNUM_WORLD ;
 int QGR_KEY_CRUSH ;
 int QGR_KEY_FALLING ;
 int QGR_KEY_FRAG ;
 int QGR_KEY_FRAG_BFG ;
 int QGR_KEY_FRAG_GAUNTLET ;
 int QGR_KEY_FRAG_GRAPPLE ;
 int QGR_KEY_FRAG_GRENADE ;
 int QGR_KEY_FRAG_LIGHTNING ;
 int QGR_KEY_FRAG_MACHINEGUN ;
 int QGR_KEY_FRAG_PLASMA ;
 int QGR_KEY_FRAG_RAILGUN ;
 int QGR_KEY_FRAG_ROCKET ;
 int QGR_KEY_FRAG_SHOTGUN ;
 int QGR_KEY_FRAG_UNKNOWN ;
 int QGR_KEY_HAZARD_DEATH ;
 int QGR_KEY_HAZARD_MISC ;
 int QGR_KEY_LAVA ;
 int QGR_KEY_SLIME ;
 int QGR_KEY_SUICIDE ;
 int QGR_KEY_SUICIDE_BFG ;
 int QGR_KEY_SUICIDE_CMD ;
 int QGR_KEY_SUICIDE_GAUNTLET ;
 int QGR_KEY_SUICIDE_GRAPPLE ;
 int QGR_KEY_SUICIDE_GRENADE ;
 int QGR_KEY_SUICIDE_LIGHTNING ;
 int QGR_KEY_SUICIDE_MACHINEGUN ;
 int QGR_KEY_SUICIDE_PLASMA ;
 int QGR_KEY_SUICIDE_RAILGUN ;
 int QGR_KEY_SUICIDE_ROCKET ;
 int QGR_KEY_SUICIDE_SHOTGUN ;
 int QGR_KEY_SUICIDE_UNKNOWN ;
 int QGR_KEY_TELEFRAG ;
 int QGR_KEY_TRIGGER_HURT ;
 int QGR_KEY_WATER ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankPlayerDie( int self, int attacker, int means_of_death )
{
 int p1;
 int p2;

 if( level.warmupTime != 0 )
 {

  return;
 }

 if( attacker == ENTITYNUM_WORLD )
 {
  p1 = self;
  p2 = -1;

  trap_RankReportInt( p1, p2, QGR_KEY_HAZARD_DEATH, 1, 1 );

  switch( means_of_death )
  {
  case 128:
   trap_RankReportInt( p1, p2, QGR_KEY_WATER, 1, 1 );
   break;
  case 132:
   trap_RankReportInt( p1, p2, QGR_KEY_SLIME, 1, 1 );
   break;
  case 141:
   trap_RankReportInt( p1, p2, QGR_KEY_LAVA, 1, 1 );
   break;
  case 147:
   trap_RankReportInt( p1, p2, QGR_KEY_CRUSH, 1, 1 );
   break;
  case 130:
   trap_RankReportInt( p1, p2, QGR_KEY_TELEFRAG, 1, 1 );
   break;
  case 146:
   trap_RankReportInt( p1, p2, QGR_KEY_FALLING, 1, 1 );
   break;
  case 131:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_CMD, 1, 1 );
   break;
  case 129:
   trap_RankReportInt( p1, p2, QGR_KEY_TRIGGER_HURT, 1, 1 );
   break;
  default:
   trap_RankReportInt( p1, p2, QGR_KEY_HAZARD_MISC, 1, 1 );
   break;
  }
 }
 else if( attacker == self )
 {
  p1 = self;
  p2 = -1;

  trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE, 1, 1 );

  switch( means_of_death )
  {
  case 145:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_GAUNTLET, 1, 1 );
   break;
  case 139:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_MACHINEGUN, 1, 1 );
   break;
  case 133:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_SHOTGUN, 1, 1 );
   break;
  case 143:
  case 142:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_GRENADE, 1, 1 );
   break;
  case 135:
  case 134:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_ROCKET, 1, 1 );
   break;
  case 138:
  case 137:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_PLASMA, 1, 1 );
   break;
  case 136:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_RAILGUN, 1, 1 );
   break;
  case 140:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_LIGHTNING, 1, 1 );
   break;
  case 149:
  case 148:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_BFG, 1, 1 );
   break;
  case 144:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_GRAPPLE, 1, 1 );
   break;
  default:
   trap_RankReportInt( p1, p2, QGR_KEY_SUICIDE_UNKNOWN, 1, 1 );
   break;
  }
 }
 else
 {
  p1 = attacker;
  p2 = self;

  trap_RankReportInt( p1, p2, QGR_KEY_FRAG, 1, 1 );

  switch( means_of_death )
  {
  case 145:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_GAUNTLET, 1, 1 );
   break;
  case 139:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_MACHINEGUN, 1, 1 );
   break;
  case 133:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_SHOTGUN, 1, 1 );
   break;
  case 143:
  case 142:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_GRENADE, 1, 1 );
   break;
  case 135:
  case 134:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_ROCKET, 1, 1 );
   break;
  case 138:
  case 137:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_PLASMA, 1, 1 );
   break;
  case 136:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_RAILGUN, 1, 1 );
   break;
  case 140:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_LIGHTNING, 1, 1 );
   break;
  case 149:
  case 148:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_BFG, 1, 1 );
   break;
  case 144:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_GRAPPLE, 1, 1 );
   break;
  default:
   trap_RankReportInt( p1, p2, QGR_KEY_FRAG_UNKNOWN, 1, 1 );
   break;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weapon_change_time; } ;
typedef TYPE_1__ gclient_t ;
struct TYPE_6__ {TYPE_1__* client; } ;
struct TYPE_5__ {scalar_t__ warmupTime; int time; } ;


 int QGR_KEY_TIME ;
 int QGR_KEY_TIME_BFG ;
 int QGR_KEY_TIME_GAUNTLET ;
 int QGR_KEY_TIME_GRAPPLE ;
 int QGR_KEY_TIME_GRENADE ;
 int QGR_KEY_TIME_LIGHTNING ;
 int QGR_KEY_TIME_MACHINEGUN ;
 int QGR_KEY_TIME_PLASMA ;
 int QGR_KEY_TIME_RAILGUN ;
 int QGR_KEY_TIME_ROCKET ;
 int QGR_KEY_TIME_SHOTGUN ;
 TYPE_3__* g_entities ;
 TYPE_2__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankWeaponTime( int self, int weapon )
{
 gclient_t* client;
 int time;

 if( level.warmupTime != 0 )
 {

  return;
 }

 client = g_entities[self].client;
 time = (level.time - client->weapon_change_time) / 1000;
 client->weapon_change_time = level.time;

 if( time <= 0 )
 {
  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_TIME, time, 1 );

 switch( weapon )
 {
 case 136:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_GAUNTLET, time, 1 );
  break;
 case 132:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_MACHINEGUN, time, 1 );
  break;
 case 128:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_SHOTGUN, time, 1 );
  break;
 case 134:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_GRENADE, time, 1 );
  break;
 case 129:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_ROCKET, time, 1 );
  break;
 case 133:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_LIGHTNING, time, 1 );
  break;
 case 130:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_RAILGUN, time, 1 );
  break;
 case 131:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_PLASMA, time, 1 );
  break;
 case 137:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_BFG, time, 1 );
  break;
 case 135:
  trap_RankReportInt( self, -1, QGR_KEY_TIME_GRAPPLE, time, 1 );
  break;
 default:
  break;
 }
}

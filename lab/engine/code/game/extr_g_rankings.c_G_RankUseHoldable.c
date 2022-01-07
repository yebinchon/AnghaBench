
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;




 int QGR_KEY_MEDKIT_USE ;
 int QGR_KEY_TELEPORTER_USE ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankUseHoldable( int self, int holdable )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 switch( holdable )
 {
 case 129:
  trap_RankReportInt( self, -1, QGR_KEY_MEDKIT_USE, 1, 1 );
  break;
 case 128:
  trap_RankReportInt( self, -1, QGR_KEY_TELEPORTER_USE, 1, 1 );
  break;
 default:
  break;
 }
}

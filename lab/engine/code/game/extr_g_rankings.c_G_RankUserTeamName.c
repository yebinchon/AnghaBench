
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_TEAM_NAME ;
 TYPE_1__ level ;
 int trap_RankReportStr (int,int,int ,char*) ;

void G_RankUserTeamName( int self, char* team_name )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 trap_RankReportStr( self, -1, QGR_KEY_TEAM_NAME, team_name );
}

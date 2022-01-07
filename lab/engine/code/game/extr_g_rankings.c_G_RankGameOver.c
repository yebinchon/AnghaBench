
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int str ;
struct TYPE_2__ {scalar_t__ warmupTime; int maxclients; } ;


 int G_RankClientDisconnect (int) ;
 int MAX_INFO_VALUE ;
 int QGR_KEY_DEDICATED ;
 int QGR_KEY_FRAGLIMIT ;
 int QGR_KEY_GAMETYPE ;
 int QGR_KEY_HOSTNAME ;
 int QGR_KEY_MAP ;
 int QGR_KEY_MAXCLIENTS ;
 int QGR_KEY_MAXPING ;
 int QGR_KEY_MAXRATE ;
 int QGR_KEY_MINPING ;
 int QGR_KEY_MOD ;
 int QGR_KEY_TIMELIMIT ;
 int QGR_KEY_VERSION ;
 scalar_t__ QGR_STATUS_ACTIVE ;
 TYPE_1__ level ;
 int trap_Cvar_VariableIntegerValue (char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_RankReportInt (int,int,int ,int,int ) ;
 int trap_RankReportStr (int,int,int ,char*) ;
 scalar_t__ trap_RankUserStatus (int) ;

void G_RankGameOver( void )
{
 int i;
 char str[MAX_INFO_VALUE];
 int num;

 if( level.warmupTime != 0 )
 {

  return;
 }

 for( i = 0; i < level.maxclients; i++ )
 {
  if( trap_RankUserStatus( i ) == QGR_STATUS_ACTIVE )
  {
   G_RankClientDisconnect( i );
  }
 }


 trap_Cvar_VariableStringBuffer( "sv_hostname", str, sizeof(str) );
 trap_RankReportStr( -1, -1, QGR_KEY_HOSTNAME, str );


 trap_Cvar_VariableStringBuffer( "mapname", str, sizeof(str) );
 trap_RankReportStr( -1, -1, QGR_KEY_MAP, str );


 trap_Cvar_VariableStringBuffer( "fs_game", str, sizeof(str) );
 trap_RankReportStr( -1, -1, QGR_KEY_MOD, str );


 num = trap_Cvar_VariableIntegerValue("g_gametype");
 trap_RankReportInt( -1, -1, QGR_KEY_GAMETYPE, num, 0 );


 num = trap_Cvar_VariableIntegerValue("fraglimit");
 trap_RankReportInt( -1, -1, QGR_KEY_FRAGLIMIT, num, 0 );


 num = trap_Cvar_VariableIntegerValue("timelimit");
 trap_RankReportInt( -1, -1, QGR_KEY_TIMELIMIT, num, 0 );


 num = trap_Cvar_VariableIntegerValue("sv_maxclients");
 trap_RankReportInt( -1, -1, QGR_KEY_MAXCLIENTS, num, 0 );


 num = trap_Cvar_VariableIntegerValue("sv_maxRate");
 trap_RankReportInt( -1, -1, QGR_KEY_MAXRATE, num, 0 );


 num = trap_Cvar_VariableIntegerValue("sv_minPing");
 trap_RankReportInt( -1, -1, QGR_KEY_MINPING, num, 0 );


 num = trap_Cvar_VariableIntegerValue("sv_maxPing");
 trap_RankReportInt( -1, -1, QGR_KEY_MAXPING, num, 0 );


 num = trap_Cvar_VariableIntegerValue("dedicated");
 trap_RankReportInt( -1, -1, QGR_KEY_DEDICATED, num, 0 );


 trap_Cvar_VariableStringBuffer( "version", str, sizeof(str) );
 trap_RankReportStr( -1, -1, QGR_KEY_VERSION, str );
}

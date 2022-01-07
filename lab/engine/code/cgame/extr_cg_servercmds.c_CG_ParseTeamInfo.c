
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* clientinfo; } ;
struct TYPE_3__ {void* powerups; void* curWeapon; void* armor; void* health; void* location; } ;


 int CG_Argv (int) ;
 int CG_Error (char*,int) ;
 int MAX_CLIENTS ;
 int TEAM_MAXOVERLAY ;
 void* atoi (int ) ;
 TYPE_2__ cgs ;
 int numSortedTeamPlayers ;
 int* sortedTeamPlayers ;

__attribute__((used)) static void CG_ParseTeamInfo( void ) {
 int i;
 int client;

 numSortedTeamPlayers = atoi( CG_Argv( 1 ) );
 if( numSortedTeamPlayers < 0 || numSortedTeamPlayers > TEAM_MAXOVERLAY )
 {
  CG_Error( "CG_ParseTeamInfo: numSortedTeamPlayers out of range (%d)",
    numSortedTeamPlayers );
  return;
 }

 for ( i = 0 ; i < numSortedTeamPlayers ; i++ ) {
  client = atoi( CG_Argv( i * 6 + 2 ) );
  if( client < 0 || client >= MAX_CLIENTS )
  {
    CG_Error( "CG_ParseTeamInfo: bad client number: %d", client );
    return;
  }

  sortedTeamPlayers[i] = client;

  cgs.clientinfo[ client ].location = atoi( CG_Argv( i * 6 + 3 ) );
  cgs.clientinfo[ client ].health = atoi( CG_Argv( i * 6 + 4 ) );
  cgs.clientinfo[ client ].armor = atoi( CG_Argv( i * 6 + 5 ) );
  cgs.clientinfo[ client ].curWeapon = atoi( CG_Argv( i * 6 + 6 ) );
  cgs.clientinfo[ client ].powerups = atoi( CG_Argv( i * 6 + 7 ) );
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PrintMsg (int *,char*,...) ;
 int TEAM_FREE ;
 int TeamName (int) ;
 int Team_ResetFlag (int) ;
 int Team_ReturnFlagSound (int ,int) ;

void Team_ReturnFlag( int team ) {
 Team_ReturnFlagSound(Team_ResetFlag(team), team);
 if( team == TEAM_FREE ) {
  PrintMsg(((void*)0), "The flag has returned!\n" );
 }
 else {
  PrintMsg(((void*)0), "The %s flag has returned!\n", TeamName(team));
 }
}

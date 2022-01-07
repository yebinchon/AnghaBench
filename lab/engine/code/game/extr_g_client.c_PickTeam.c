
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t team_t ;
struct TYPE_2__ {scalar_t__* teamScores; } ;


 size_t TEAM_BLUE ;
 int TEAM_NUM_TEAMS ;
 size_t TEAM_RED ;
 int TeamCount (int,size_t) ;
 TYPE_1__ level ;

team_t PickTeam( int ignoreClientNum ) {
 int counts[TEAM_NUM_TEAMS];

 counts[TEAM_BLUE] = TeamCount( ignoreClientNum, TEAM_BLUE );
 counts[TEAM_RED] = TeamCount( ignoreClientNum, TEAM_RED );

 if ( counts[TEAM_BLUE] > counts[TEAM_RED] ) {
  return TEAM_RED;
 }
 if ( counts[TEAM_RED] > counts[TEAM_BLUE] ) {
  return TEAM_BLUE;
 }

 if ( level.teamScores[TEAM_BLUE] > level.teamScores[TEAM_RED] ) {
  return TEAM_RED;
 }
 return TEAM_BLUE;
}

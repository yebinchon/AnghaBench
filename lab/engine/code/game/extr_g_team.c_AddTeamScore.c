
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {void* eventParm; } ;
struct TYPE_6__ {int svFlags; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_9__ {scalar_t__* teamScores; } ;


 int EV_GLOBAL_TEAM_SOUND ;
 void* GTS_BLUETEAM_SCORED ;
 void* GTS_BLUETEAM_TOOK_LEAD ;
 void* GTS_REDTEAM_SCORED ;
 void* GTS_REDTEAM_TOOK_LEAD ;
 void* GTS_TEAMS_ARE_TIED ;
 TYPE_3__* G_TempEntity (int ,int ) ;
 int SVF_BROADCAST ;
 size_t TEAM_BLUE ;
 int TEAM_RED ;
 TYPE_4__ level ;

void AddTeamScore(vec3_t origin, int team, int score) {
 gentity_t *te;

 te = G_TempEntity(origin, EV_GLOBAL_TEAM_SOUND );
 te->r.svFlags |= SVF_BROADCAST;

 if ( team == TEAM_RED ) {
  if ( level.teamScores[ TEAM_RED ] + score == level.teamScores[ TEAM_BLUE ] ) {

   te->s.eventParm = GTS_TEAMS_ARE_TIED;
  }
  else if ( level.teamScores[ TEAM_RED ] <= level.teamScores[ TEAM_BLUE ] &&
     level.teamScores[ TEAM_RED ] + score > level.teamScores[ TEAM_BLUE ]) {

   te->s.eventParm = GTS_REDTEAM_TOOK_LEAD;
  }
  else {

   te->s.eventParm = GTS_REDTEAM_SCORED;
  }
 }
 else {
  if ( level.teamScores[ TEAM_BLUE ] + score == level.teamScores[ TEAM_RED ] ) {

   te->s.eventParm = GTS_TEAMS_ARE_TIED;
  }
  else if ( level.teamScores[ TEAM_BLUE ] <= level.teamScores[ TEAM_RED ] &&
     level.teamScores[ TEAM_BLUE ] + score > level.teamScores[ TEAM_RED ]) {

   te->s.eventParm = GTS_BLUETEAM_TOOK_LEAD;
  }
  else {

   te->s.eventParm = GTS_BLUETEAM_SCORED;
  }
 }
 level.teamScores[ team ] += score;
}

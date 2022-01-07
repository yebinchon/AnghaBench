
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int spawnflags; int classname; TYPE_4__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_15__ {int sessionTeam; } ;
struct TYPE_14__ {int generic1; } ;
struct TYPE_17__ {TYPE_2__ sess; TYPE_1__ ps; } ;
typedef TYPE_4__ gclient_t ;
struct TYPE_18__ {scalar_t__ integer; } ;


 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 int G_FreeEntity (TYPE_3__*) ;
 int PrintMsg (TYPE_3__*,char*) ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int Team_TouchEnemyFlag (TYPE_3__*,TYPE_3__*,int) ;
 int Team_TouchOurFlag (TYPE_3__*,TYPE_3__*,int) ;
 TYPE_5__ g_gametype ;
 scalar_t__ strcmp (int ,char*) ;

int Pickup_Team( gentity_t *ent, gentity_t *other ) {
 int team;
 gclient_t *cl = other->client;
 if( strcmp(ent->classname, "team_CTF_redflag") == 0 ) {
  team = TEAM_RED;
 }
 else if( strcmp(ent->classname, "team_CTF_blueflag") == 0 ) {
  team = TEAM_BLUE;
 }





 else {
  PrintMsg ( other, "Don't know what team the flag is on.\n");
  return 0;
 }
 if( team == cl->sess.sessionTeam) {
  return Team_TouchOurFlag( ent, other, team );
 }
 return Team_TouchEnemyFlag( ent, other, team );
}

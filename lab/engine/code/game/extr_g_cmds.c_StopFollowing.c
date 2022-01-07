
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int svFlags; } ;
struct TYPE_12__ {TYPE_4__* client; TYPE_2__ r; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_10__ {int* stats; int viewangles; TYPE_5__* clientNum; int pm_flags; void** persistant; } ;
struct TYPE_8__ {int spectatorState; void* sessionTeam; } ;
struct TYPE_11__ {TYPE_3__ ps; TYPE_1__ sess; } ;


 size_t PERS_TEAM ;
 int PMF_FOLLOW ;
 int SPECTATOR_FREE ;
 size_t STAT_HEALTH ;
 int SVF_BOT ;
 int SetClientViewAngle (TYPE_5__*,int ) ;
 void* TEAM_SPECTATOR ;
 int g_entities ;

void StopFollowing( gentity_t *ent ) {
 ent->client->ps.persistant[ PERS_TEAM ] = TEAM_SPECTATOR;
 ent->client->sess.sessionTeam = TEAM_SPECTATOR;
 ent->client->sess.spectatorState = SPECTATOR_FREE;
 ent->client->ps.pm_flags &= ~PMF_FOLLOW;
 ent->r.svFlags &= ~SVF_BOT;
 ent->client->ps.clientNum = ent - g_entities;

 SetClientViewAngle( ent, ent->client->ps.viewangles );


 if ( ent->client->ps.stats[STAT_HEALTH] <= 0 ) {
  ent->client->ps.stats[STAT_HEALTH] = 1;
 }
}

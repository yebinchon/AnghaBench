
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_10__ {int eFlags; int pm_flags; } ;
struct TYPE_9__ {scalar_t__ spectatorState; int spectatorClient; scalar_t__ sessionTeam; } ;
struct TYPE_8__ {scalar_t__ connected; } ;
struct TYPE_12__ {TYPE_3__ ps; TYPE_2__ sess; TYPE_1__ pers; } ;
typedef TYPE_5__ gclient_t ;
struct TYPE_13__ {int follow1; int follow2; TYPE_5__* clients; } ;


 scalar_t__ CON_CONNECTED ;
 int ClientBegin (int) ;
 int EF_TEAMVOTED ;
 int EF_VOTED ;
 int PMF_FOLLOW ;
 int PMF_SCOREBOARD ;
 scalar_t__ SPECTATOR_FOLLOW ;
 scalar_t__ SPECTATOR_FREE ;
 scalar_t__ SPECTATOR_SCOREBOARD ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_6__ level ;

void SpectatorClientEndFrame( gentity_t *ent ) {
 gclient_t *cl;


 if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
  int clientNum, flags;

  clientNum = ent->client->sess.spectatorClient;


  if ( clientNum == -1 ) {
   clientNum = level.follow1;
  } else if ( clientNum == -2 ) {
   clientNum = level.follow2;
  }
  if ( clientNum >= 0 ) {
   cl = &level.clients[ clientNum ];
   if ( cl->pers.connected == CON_CONNECTED && cl->sess.sessionTeam != TEAM_SPECTATOR ) {
    flags = (cl->ps.eFlags & ~(EF_VOTED | EF_TEAMVOTED)) | (ent->client->ps.eFlags & (EF_VOTED | EF_TEAMVOTED));
    ent->client->ps = cl->ps;
    ent->client->ps.pm_flags |= PMF_FOLLOW;
    ent->client->ps.eFlags = flags;
    return;
   }
  }

  if ( ent->client->ps.pm_flags & PMF_FOLLOW ) {

   if ( ent->client->sess.spectatorClient >= 0 ) {
    ent->client->sess.spectatorState = SPECTATOR_FREE;
   }

   ClientBegin( ent->client - level.clients );
  }
 }

 if ( ent->client->sess.spectatorState == SPECTATOR_SCOREBOARD ) {
  ent->client->ps.pm_flags |= PMF_SCOREBOARD;
 } else {
  ent->client->ps.pm_flags &= ~PMF_SCOREBOARD;
 }
}

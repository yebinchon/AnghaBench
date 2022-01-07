
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int origin; } ;
struct TYPE_13__ {TYPE_4__* client; TYPE_2__ s; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_11__ {int * persistant; int origin; scalar_t__ generic1; } ;
struct TYPE_9__ {scalar_t__ sessionTeam; } ;
struct TYPE_12__ {TYPE_3__ ps; TYPE_1__ sess; } ;


 int FOFS (char*) ;
 TYPE_5__* G_Find (int *,int ,char*) ;
 size_t PERS_PLAYEREVENTS ;
 int PLAYEREVENT_HOLYSHIT ;
 scalar_t__ TEAM_BLUE ;
 int VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;

void CheckAlmostScored( gentity_t *self, gentity_t *attacker ) {
 gentity_t *ent;
 vec3_t dir;
 char *classname;


 if ( self->client->ps.generic1 ) {
  if ( self->client->sess.sessionTeam == TEAM_BLUE ) {
   classname = "team_redobelisk";
  }
  else {
   classname = "team_blueobelisk";
  }
  ent = G_Find(((void*)0), FOFS(classname), classname);

  if ( ent ) {

   VectorSubtract( self->client->ps.origin, ent->s.origin, dir );
   if ( VectorLength(dir) < 200 ) {
    self->client->ps.persistant[PERS_PLAYEREVENTS] ^= PLAYEREVENT_HOLYSHIT;
    if ( attacker->client ) {
     attacker->client->ps.persistant[PERS_PLAYEREVENTS] ^= PLAYEREVENT_HOLYSHIT;
    }
   }
  }
 }
}

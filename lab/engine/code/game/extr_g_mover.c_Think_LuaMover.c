
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


typedef int vec3_t ;
struct TYPE_11__ {int velocity; int origin; } ;
typedef TYPE_4__ playerState_t ;
struct TYPE_8__ {int origin; } ;
struct TYPE_12__ {void (* think ) (TYPE_5__*) ;scalar_t__ nextthink; TYPE_1__ s; int id; TYPE_3__* activator; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_13__ {scalar_t__ time; } ;
struct TYPE_10__ {TYPE_2__* client; } ;
struct TYPE_9__ {TYPE_4__ ps; } ;


 scalar_t__ FRAMETIME ;
 int VectorAdd (int ,int ,int ) ;
 int VectorSet (int ,float,float,float) ;
 int dmlab_lua_mover (int ,int ,int ,int ,int ,int ) ;
 TYPE_6__ level ;

void Think_LuaMover( gentity_t *ent ) {
 vec3_t player_position_delta;
 vec3_t player_velocity_delta;
 playerState_t* ps = &(ent->activator->client->ps);

 VectorSet(player_position_delta, 0.0f, 0.0f, 0.0f);
 VectorSet(player_velocity_delta, 0.0f, 0.0f, 0.0f);

 dmlab_lua_mover(ent->id, ent->s.origin, ps->origin, ps->velocity, player_position_delta, player_velocity_delta);

 VectorAdd(ps->origin, player_position_delta, ps->origin);
 VectorAdd(ps->velocity, player_velocity_delta, ps->velocity);

 ent->nextthink = level.time + FRAMETIME;
 ent->think = Think_LuaMover;
}

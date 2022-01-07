
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_12__ {int currentOrigin; int ownerNum; int svFlags; } ;
struct TYPE_10__ {int trDelta; int trBase; scalar_t__ trTime; int trType; } ;
struct TYPE_11__ {TYPE_1__ pos; int number; int otherEntityNum; int weapon; int eType; } ;
struct TYPE_14__ {char* classname; TYPE_4__* client; TYPE_3__ r; TYPE_2__ s; int * target_ent; struct TYPE_14__* parent; int clipmask; int methodOfDeath; int think; scalar_t__ nextthink; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_15__ {scalar_t__ time; } ;
struct TYPE_13__ {TYPE_5__* hook; } ;


 int ET_MISSILE ;
 TYPE_5__* G_Spawn () ;
 int MASK_SHOT ;
 scalar_t__ MISSILE_PRESTEP_TIME ;
 int MOD_GRAPPLE ;
 int SVF_USE_CURRENT_ORIGIN ;
 int SnapVector (int ) ;
 int TR_LINEAR ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorScale (int ,int,int ) ;
 int WP_GRAPPLING_HOOK ;
 int Weapon_HookFree ;
 TYPE_6__ level ;

gentity_t *fire_grapple (gentity_t *self, vec3_t start, vec3_t dir) {
 gentity_t *hook;

 VectorNormalize (dir);

 hook = G_Spawn();
 hook->classname = "hook";
 hook->nextthink = level.time + 10000;
 hook->think = Weapon_HookFree;
 hook->s.eType = ET_MISSILE;
 hook->r.svFlags = SVF_USE_CURRENT_ORIGIN;
 hook->s.weapon = WP_GRAPPLING_HOOK;
 hook->r.ownerNum = self->s.number;
 hook->methodOfDeath = MOD_GRAPPLE;
 hook->clipmask = MASK_SHOT;
 hook->parent = self;
 hook->target_ent = ((void*)0);

 hook->s.pos.trType = TR_LINEAR;
 hook->s.pos.trTime = level.time - MISSILE_PRESTEP_TIME;
 hook->s.otherEntityNum = self->s.number;
 VectorCopy( start, hook->s.pos.trBase );
 VectorScale( dir, 800, hook->s.pos.trDelta );
 SnapVector( hook->s.pos.trDelta );
 VectorCopy (start, hook->r.currentOrigin);

 self->client->hook = hook;

 return hook;
}

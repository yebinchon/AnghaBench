
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int trBase; } ;
struct TYPE_8__ {int eventParm; int origin2; TYPE_1__ pos; int number; int otherEntityNum; } ;
struct TYPE_9__ {TYPE_2__ s; } ;
typedef TYPE_3__ gentity_t ;


 int EV_SHOTGUN ;
 TYPE_3__* G_TempEntity (int ,int ) ;
 int ShotgunPattern (int ,int ,int,TYPE_3__*) ;
 int SnapVector (int ) ;
 int VectorScale (int ,int,int ) ;
 int forward ;
 int muzzle ;
 int rand () ;

void weapon_supershotgun_fire (gentity_t *ent) {
 gentity_t *tent;


 tent = G_TempEntity( muzzle, EV_SHOTGUN );
 VectorScale( forward, 4096, tent->s.origin2 );
 SnapVector( tent->s.origin2 );
 tent->s.eventParm = rand() & 255;
 tent->s.otherEntityNum = ent->s.number;

 ShotgunPattern( tent->s.pos.trBase, tent->s.origin2, tent->s.eventParm, ent );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int currentAngles; int currentOrigin; } ;
struct TYPE_11__ {int* trDelta; int trBase; int trType; } ;
struct TYPE_10__ {int trBase; } ;
struct TYPE_12__ {TYPE_2__ apos; TYPE_1__ pos; int origin; } ;
struct TYPE_14__ {int speed; int spawnflags; int damage; TYPE_4__ r; TYPE_3__ s; int model; } ;
typedef TYPE_5__ gentity_t ;


 int InitMover (TYPE_5__*) ;
 int TR_LINEAR ;
 int VectorCopy (int ,int ) ;
 int trap_LinkEntity (TYPE_5__*) ;
 int trap_SetBrushModel (TYPE_5__*,int ) ;

void SP_func_rotating (gentity_t *ent) {
 if ( !ent->speed ) {
  ent->speed = 100;
 }


 ent->s.apos.trType = TR_LINEAR;
 if ( ent->spawnflags & 4 ) {
  ent->s.apos.trDelta[2] = ent->speed;
 } else if ( ent->spawnflags & 8 ) {
  ent->s.apos.trDelta[0] = ent->speed;
 } else {
  ent->s.apos.trDelta[1] = ent->speed;
 }

 if (!ent->damage) {
  ent->damage = 2;
 }

 trap_SetBrushModel( ent, ent->model );
 InitMover( ent );

 VectorCopy( ent->s.origin, ent->s.pos.trBase );
 VectorCopy( ent->s.pos.trBase, ent->r.currentOrigin );
 VectorCopy( ent->s.apos.trBase, ent->r.currentAngles );

 trap_LinkEntity( ent );
}

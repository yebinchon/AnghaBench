
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int gitem_t ;
struct TYPE_8__ {int trBase; } ;
struct TYPE_9__ {int trBase; } ;
struct TYPE_10__ {TYPE_1__ pos; TYPE_2__ apos; } ;
struct TYPE_11__ {TYPE_3__ s; } ;
typedef TYPE_4__ gentity_t ;


 int AngleVectors (int*,int*,int *,int *) ;
 TYPE_4__* LaunchItem (int *,int ,int*) ;
 size_t PITCH ;
 int VectorCopy (int ,int*) ;
 int VectorScale (int*,int,int*) ;
 size_t YAW ;
 int crandom () ;

gentity_t *Drop_Item( gentity_t *ent, gitem_t *item, float angle ) {
 vec3_t velocity;
 vec3_t angles;

 VectorCopy( ent->s.apos.trBase, angles );
 angles[YAW] += angle;
 angles[PITCH] = 0;

 AngleVectors( angles, velocity, ((void*)0), ((void*)0) );
 VectorScale( velocity, 150, velocity );
 velocity[2] += 200 + crandom() * 50;

 return LaunchItem( item, ent->s.pos.trBase, velocity );
}

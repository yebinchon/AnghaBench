
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_7__ {int trBase; } ;
struct TYPE_8__ {TYPE_1__ pos; } ;
struct TYPE_11__ {TYPE_4__* client; TYPE_2__ s; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_9__ {scalar_t__ viewheight; } ;
struct TYPE_10__ {TYPE_3__ ps; } ;


 int SnapVector (int *) ;
 int VectorCopy (int ,int *) ;
 int VectorMA (int *,int,int *,int *) ;

void CalcMuzzlePoint ( gentity_t *ent, vec3_t forward, vec3_t right, vec3_t up, vec3_t muzzlePoint ) {
 VectorCopy( ent->s.pos.trBase, muzzlePoint );
 muzzlePoint[2] += ent->client->ps.viewheight;
 VectorMA( muzzlePoint, 14, forward, muzzlePoint );

 SnapVector( muzzlePoint );
}

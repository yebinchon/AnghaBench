
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int origin; int * axis; } ;
typedef TYPE_1__ orientation_t ;


 float DotProduct (int ,int ) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void R_MirrorPoint (vec3_t in, orientation_t *surface, orientation_t *camera, vec3_t out) {
 int i;
 vec3_t local;
 vec3_t transformed;
 float d;

 VectorSubtract( in, surface->origin, local );

 VectorClear( transformed );
 for ( i = 0 ; i < 3 ; i++ ) {
  d = DotProduct(local, surface->axis[i]);
  VectorMA( transformed, d, camera->axis[i], transformed );
 }

 VectorAdd( transformed, camera->origin, out );
}

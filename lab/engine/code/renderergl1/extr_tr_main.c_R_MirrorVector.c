
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int * axis; } ;
typedef TYPE_1__ orientation_t ;


 float DotProduct (int ,int ) ;
 int VectorClear (int ) ;
 int VectorMA (int ,float,int ,int ) ;

void R_MirrorVector (vec3_t in, orientation_t *surface, orientation_t *camera, vec3_t out) {
 int i;
 float d;

 VectorClear( out );
 for ( i = 0 ; i < 3 ; i++ ) {
  d = DotProduct(in, surface->axis[i]);
  VectorMA( out, d, camera->axis[i], out );
 }
}

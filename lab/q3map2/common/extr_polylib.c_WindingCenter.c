
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;


 int VectorAdd (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int vec3_origin ;

void WindingCenter( winding_t *w, vec3_t center ){
 int i;
 float scale;

 VectorCopy( vec3_origin, center );
 for ( i = 0 ; i < w->numpoints ; i++ )
  VectorAdd( w->p[i], center, center );

 scale = 1.0 / w->numpoints;
 VectorScale( center, scale, center );
}

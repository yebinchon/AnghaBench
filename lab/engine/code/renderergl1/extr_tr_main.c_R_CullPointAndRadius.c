
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {float dist; int normal; } ;
typedef TYPE_2__ cplane_t ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_5__ {TYPE_2__* frustum; } ;
struct TYPE_7__ {TYPE_1__ viewParms; } ;


 int CULL_CLIP ;
 int CULL_IN ;
 int CULL_OUT ;
 float DotProduct (int ,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_4__* r_nocull ;
 TYPE_3__ tr ;

int R_CullPointAndRadius( vec3_t pt, float radius )
{
 int i;
 float dist;
 cplane_t *frust;
 qboolean mightBeClipped = qfalse;

 if ( r_nocull->integer ) {
  return CULL_CLIP;
 }


 for (i = 0 ; i < 4 ; i++)
 {
  frust = &tr.viewParms.frustum[i];

  dist = DotProduct( pt, frust->normal) - frust->dist;
  if ( dist < -radius )
  {
   return CULL_OUT;
  }
  else if ( dist <= radius )
  {
   mightBeClipped = qtrue;
  }
 }

 if ( mightBeClipped )
 {
  return CULL_CLIP;
 }

 return CULL_IN;
}

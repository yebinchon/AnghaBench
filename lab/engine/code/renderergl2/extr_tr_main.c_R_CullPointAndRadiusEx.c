
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_4__ {float dist; int normal; } ;
typedef TYPE_1__ cplane_t ;
struct TYPE_5__ {scalar_t__ integer; } ;


 int CULL_CLIP ;
 int CULL_IN ;
 int CULL_OUT ;
 float DotProduct (int const,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_2__* r_nocull ;

int R_CullPointAndRadiusEx( const vec3_t pt, float radius, const cplane_t* frustum, int numPlanes )
{
 int i;
 float dist;
 const cplane_t *frust;
 qboolean mightBeClipped = qfalse;

 if ( r_nocull->integer ) {
  return CULL_CLIP;
 }


 for (i = 0 ; i < numPlanes ; i++)
 {
  frust = &frustum[i];

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

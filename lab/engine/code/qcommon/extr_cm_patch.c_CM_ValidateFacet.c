
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int winding_t ;
typedef int * vec3_t ;
typedef int qboolean ;
struct TYPE_4__ {int surfacePlane; int numBorders; int* borderPlanes; int * borderInward; } ;
typedef TYPE_1__ facet_t ;
struct TYPE_5__ {int plane; } ;


 int * BaseWindingForPlane (float*,float) ;
 int ChopWindingInPlace (int **,float*,float,float) ;
 int FreeWinding (int *) ;
 int MAX_MAP_BOUNDS ;
 int Vector4Copy (int ,float*) ;
 int VectorSubtract (int ,float*,float*) ;
 int WindingBounds (int *,int *,int *) ;
 TYPE_2__* planes ;
 int qfalse ;
 int qtrue ;
 int vec3_origin ;

__attribute__((used)) static qboolean CM_ValidateFacet( facet_t *facet ) {
 float plane[4];
 int j;
 winding_t *w;
 vec3_t bounds[2];

 if ( facet->surfacePlane == -1 ) {
  return qfalse;
 }

 Vector4Copy( planes[ facet->surfacePlane ].plane, plane );
 w = BaseWindingForPlane( plane, plane[3] );
 for ( j = 0 ; j < facet->numBorders && w ; j++ ) {
  if ( facet->borderPlanes[j] == -1 ) {
   FreeWinding( w );
   return qfalse;
  }
  Vector4Copy( planes[ facet->borderPlanes[j] ].plane, plane );
  if ( !facet->borderInward[j] ) {
   VectorSubtract( vec3_origin, plane, plane );
   plane[3] = -plane[3];
  }
  ChopWindingInPlace( &w, plane, plane[3], 0.1f );
 }

 if ( !w ) {
  return qfalse;
 }


 WindingBounds( w, bounds[0], bounds[1] );
 FreeWinding( w );

 for ( j = 0 ; j < 3 ; j++ ) {
  if ( bounds[1][j] - bounds[0][j] > MAX_MAP_BOUNDS ) {
   return qfalse;
  }
  if ( bounds[0][j] >= MAX_MAP_BOUNDS ) {
   return qfalse;
  }
  if ( bounds[1][j] <= -MAX_MAP_BOUNDS ) {
   return qfalse;
  }
 }
 return qtrue;
}

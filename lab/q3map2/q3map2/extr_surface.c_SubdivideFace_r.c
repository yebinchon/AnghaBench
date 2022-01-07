
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef float* vec3_t ;
typedef int side_t ;
struct TYPE_10__ {int fogNum; } ;
typedef TYPE_2__ mapDrawSurface_t ;
typedef int entity_t ;
typedef int brush_t ;


 int AddPointToBounds (int ,float*,float*) ;
 int ClearBounds (float*,float*) ;
 int ClipWindingEpsilon (TYPE_1__*,float*,float,float const,TYPE_1__**,TYPE_1__**) ;
 float DotProduct (float*,float*) ;
 TYPE_2__* DrawSurfaceForSide (int *,int *,int *,TYPE_1__*) ;
 int Error (char*,int) ;
 float ceil (float) ;
 float floor (float) ;

__attribute__((used)) static void SubdivideFace_r( entity_t *e, brush_t *brush, side_t *side, winding_t *w, int fogNum, float subdivisions ){
 int i;
 int axis;
 vec3_t bounds[ 2 ];
 const float epsilon = 0.1;
 int subFloor, subCeil;
 winding_t *frontWinding, *backWinding;
 mapDrawSurface_t *ds;



 if ( w == ((void*)0) ) {
  return;
 }
 if ( w->numpoints < 3 ) {
  Error( "SubdivideFace_r: Bad w->numpoints (%d < 3)", w->numpoints );
 }


 ClearBounds( bounds[ 0 ], bounds[ 1 ] );
 for ( i = 0; i < w->numpoints; i++ )
  AddPointToBounds( w->p[ i ], bounds[ 0 ], bounds[ 1 ] );


 for ( axis = 0; axis < 3; axis++ )
 {
  vec3_t planePoint = { 0, 0, 0 };
  vec3_t planeNormal = { 0, 0, 0 };
  float d;



  subFloor = floor( bounds[ 0 ][ axis ] / subdivisions ) * subdivisions;
  subCeil = ceil( bounds[ 1 ][ axis ] / subdivisions ) * subdivisions;
  planePoint[ axis ] = subFloor + subdivisions;
  planeNormal[ axis ] = -1;
  d = DotProduct( planePoint, planeNormal );


  if ( ( subCeil - subFloor ) > subdivisions ) {

   ClipWindingEpsilon( w, planeNormal, d, epsilon, &frontWinding, &backWinding );


   if ( frontWinding == ((void*)0) ) {
    w = backWinding;
   }
   else if ( backWinding == ((void*)0) ) {
    w = frontWinding;
   }
   else
   {
    SubdivideFace_r( e, brush, side, frontWinding, fogNum, subdivisions );
    SubdivideFace_r( e, brush, side, backWinding, fogNum, subdivisions );
    return;
   }
  }
 }


 ds = DrawSurfaceForSide( e, brush, side, w );


 ds->fogNum = fogNum;
}

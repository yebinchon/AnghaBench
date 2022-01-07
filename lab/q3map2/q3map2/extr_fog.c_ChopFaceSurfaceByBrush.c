
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_16__ {size_t planenum; } ;
typedef TYPE_2__ side_t ;
typedef int qboolean ;
struct TYPE_17__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_18__ {int mapBrush; int fogNum; TYPE_1__* sideRef; } ;
typedef TYPE_4__ mapDrawSurface_t ;
typedef int entity_t ;
struct TYPE_19__ {int numsides; TYPE_2__* sides; } ;
typedef TYPE_5__ brush_t ;
struct TYPE_15__ {TYPE_2__* side; } ;


 int ClearSurface (TYPE_4__*) ;
 int ClipWindingEpsilon (int *,int ,int ,int ,int **,int **) ;
 TYPE_4__* DrawSurfaceForSide (int *,int ,TYPE_2__*,int *) ;
 int Error (char*) ;
 int FreeWinding (int *) ;
 int MAX_BRUSH_SIDES ;
 int ON_EPSILON ;
 int * WindingFromDrawSurf (TYPE_4__*) ;
 TYPE_3__* mapplanes ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int numFogFragments ;
 int numMapDrawSurfs ;
 int qfalse ;
 int qtrue ;

qboolean ChopFaceSurfaceByBrush( entity_t *e, mapDrawSurface_t *ds, brush_t *b ){
 int i, j;
 side_t *s;
 plane_t *plane;
 winding_t *w;
 winding_t *front, *back;
 winding_t *outside[ MAX_BRUSH_SIDES ];
 int numOutside;
 mapDrawSurface_t *newds;



 if ( ds->sideRef == ((void*)0) || ds->sideRef->side == ((void*)0) ) {
  return qfalse;
 }


 w = WindingFromDrawSurf( ds );
 numOutside = 0;


 for ( i = 0; i < b->numsides; i++ )
 {

  s = &b->sides[ i ];
  plane = &mapplanes[ s->planenum ];


  if ( ds->sideRef->side->planenum == s->planenum ) {
   return qfalse;
  }


  if ( ( ds->sideRef->side->planenum ^ 1 ) == s->planenum ) {
   continue;
  }


  ClipWindingEpsilon( w, plane->normal, plane->dist, ON_EPSILON, &front, &back );
  FreeWinding( w );

  if ( back == ((void*)0) ) {

   for ( j = 0; j < numOutside; j++ )
    FreeWinding( outside[ j ] );
   return qfalse;
  }

  if ( front != ((void*)0) ) {
   if ( numOutside == MAX_BRUSH_SIDES ) {
    Error( "MAX_BRUSH_SIDES" );
   }
   outside[ numOutside ] = front;
   numOutside++;
  }

  w = back;
 }




 numFogFragments += numOutside;
 s = ds->sideRef->side;
 for ( i = 0; i < numOutside; i++ )
 {
  newds = DrawSurfaceForSide( e, ds->mapBrush, s, outside[ i ] );
  newds->fogNum = ds->fogNum;
  FreeWinding( outside[ i ] );
 }






 newds = DrawSurfaceForSide( e, ds->mapBrush, s, w );
 if ( newds == ((void*)0) ) {
  return qfalse;
 }


 ClearSurface( ds );
 memcpy( ds, newds, sizeof( mapDrawSurface_t ) );


 numMapDrawSurfs--;


 return qtrue;
}

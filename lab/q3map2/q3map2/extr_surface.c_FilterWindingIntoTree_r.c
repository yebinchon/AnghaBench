
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int numpoints; int ** p; } ;
typedef TYPE_1__ winding_t ;
typedef int * vec4_t ;
struct TYPE_18__ {float* mins; float* maxs; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_19__ {int dist; int * normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_20__ {size_t planenum; struct TYPE_20__** children; int * parent; } ;
typedef TYPE_4__ node_t ;
struct TYPE_21__ {size_t planeNum; TYPE_2__* shaderInfo; } ;
typedef TYPE_5__ mapDrawSurface_t ;


 int AddReferenceToLeaf (TYPE_5__*,TYPE_4__*) ;
 TYPE_1__* AllocWinding (int) ;
 int ClipWindingEpsilon (TYPE_1__*,int *,int ,int ,TYPE_1__**,TYPE_1__**) ;
 float DotProduct (int *,int *) ;
 int FreeWinding (TYPE_1__*) ;
 int ON_EPSILON ;
 size_t PLANENUM_LEAF ;
 int VectorAdd (int *,float*,int *) ;
 int VectorCopy (int *,int *) ;
 int VectorSubtract (int ,int *,int *) ;
 float fabs (int ) ;
 TYPE_3__* mapplanes ;
 int vec3_origin ;

int FilterWindingIntoTree_r( winding_t *w, mapDrawSurface_t *ds, node_t *node ){
 int i, refs = 0;
 plane_t *p1, *p2;
 vec4_t plane1, plane2, reverse;
 winding_t *fat, *front, *back;
 shaderInfo_t *si;



 si = ds->shaderInfo;


 if ( node->parent == ((void*)0) && si != ((void*)0) &&
   ( si->mins[ 0 ] != 0.0f || si->maxs[ 0 ] != 0.0f ||
     si->mins[ 1 ] != 0.0f || si->maxs[ 1 ] != 0.0f ||
     si->mins[ 2 ] != 0.0f || si->maxs[ 2 ] != 0.0f ) ) {


  fat = AllocWinding( w->numpoints * 3 );
  fat->numpoints = w->numpoints * 3;
  for ( i = 0; i < w->numpoints; i++ )
  {
   VectorCopy( w->p[ i ], fat->p[ i ] );
   VectorAdd( w->p[ i ], si->mins, fat->p[ i * 2 ] );
   VectorAdd( w->p[ i ], si->maxs, fat->p[ i * 3 ] );
  }

  FreeWinding( w );
  w = fat;
 }


 if ( node->planenum != PLANENUM_LEAF ) {

  p1 = &mapplanes[ node->planenum ];
  VectorCopy( p1->normal, plane1 );
  plane1[ 3 ] = p1->dist;


  if ( ds->planeNum >= 0 ) {

   p2 = &mapplanes[ ds->planeNum ];
   VectorCopy( p2->normal, plane2 );
   plane2[ 3 ] = p2->dist;



   VectorSubtract( vec3_origin, plane2, reverse );
   reverse[ 3 ] = -plane2[ 3 ];


   if ( DotProduct( plane1, plane2 ) > 0.999f && fabs( plane1[ 3 ] - plane2[ 3 ] ) < 0.001f ) {
    return FilterWindingIntoTree_r( w, ds, node->children[ 0 ] );
   }
   if ( DotProduct( plane1, reverse ) > 0.999f && fabs( plane1[ 3 ] - reverse[ 3 ] ) < 0.001f ) {
    return FilterWindingIntoTree_r( w, ds, node->children[ 1 ] );
   }
  }


  ClipWindingEpsilon( w, plane1, plane1[ 3 ], ON_EPSILON, &front, &back );


  refs = 0;
  if ( front != ((void*)0) ) {
   refs += FilterWindingIntoTree_r( front, ds, node->children[ 0 ] );
  }
  if ( back != ((void*)0) ) {
   refs += FilterWindingIntoTree_r( back, ds, node->children[ 1 ] );
  }
  FreeWinding( w );


  return refs;
 }


 return AddReferenceToLeaf( ds, node );
}

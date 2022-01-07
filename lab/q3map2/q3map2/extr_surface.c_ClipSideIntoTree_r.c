
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {int planenum; int visibleHull; } ;
typedef TYPE_1__ side_t ;
struct TYPE_8__ {int normal; int dist; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_9__ {int planenum; int opaque; struct TYPE_9__** children; } ;
typedef TYPE_3__ node_t ;


 int AddWindingToConvexHull (int *,int *,int ) ;
 int ClipWindingEpsilon (int *,int ,int ,int ,int **,int **) ;
 int FreeWinding (int *) ;
 int ON_EPSILON ;
 int PLANENUM_LEAF ;
 TYPE_2__* mapplanes ;

void ClipSideIntoTree_r( winding_t *w, side_t *side, node_t *node ){
 plane_t *plane;
 winding_t *front, *back;

 if ( !w ) {
  return;
 }

 if ( node->planenum != PLANENUM_LEAF ) {
  if ( side->planenum == node->planenum ) {
   ClipSideIntoTree_r( w, side, node->children[0] );
   return;
  }
  if ( side->planenum == ( node->planenum ^ 1 ) ) {
   ClipSideIntoTree_r( w, side, node->children[1] );
   return;
  }

  plane = &mapplanes[ node->planenum ];
  ClipWindingEpsilon( w, plane->normal, plane->dist,
       ON_EPSILON, &front, &back );
  FreeWinding( w );

  ClipSideIntoTree_r( front, side, node->children[0] );
  ClipSideIntoTree_r( back, side, node->children[1] );

  return;
 }


 if ( !node->opaque ) {
  AddWindingToConvexHull( w, &side->visibleHull, mapplanes[ side->planenum ].normal );
 }

 FreeWinding( w );
 return;
}

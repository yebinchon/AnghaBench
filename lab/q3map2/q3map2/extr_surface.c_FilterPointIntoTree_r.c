
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {float dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_7__ {size_t planenum; struct TYPE_7__** children; } ;
typedef TYPE_2__ node_t ;
typedef int mapDrawSurface_t ;


 int AddReferenceToLeaf (int *,TYPE_2__*) ;
 float DotProduct (int ,int ) ;
 float ON_EPSILON ;
 size_t PLANENUM_LEAF ;
 TYPE_1__* mapplanes ;

int FilterPointIntoTree_r( vec3_t point, mapDrawSurface_t *ds, node_t *node ){
 float d;
 plane_t *plane;
 int refs = 0;



 if ( node->planenum != PLANENUM_LEAF ) {

  plane = &mapplanes[ node->planenum ];
  d = DotProduct( point, plane->normal ) - plane->dist;


  refs = 0;
  if ( d >= -ON_EPSILON ) {
   refs += FilterPointIntoTree_r( point, ds, node->children[ 0 ] );
  }
  if ( d <= ON_EPSILON ) {
   refs += FilterPointIntoTree_r( point, ds, node->children[ 1 ] );
  }


  return refs;
 }


 return AddReferenceToLeaf( ds, node );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_6__ {size_t planenum; struct TYPE_6__* parent; struct TYPE_6__** children; } ;
typedef TYPE_2__ node_t ;


 int BASE_WINDING_EPSILON ;
 int * BaseWindingForPlane (int ,int ) ;
 int ChopWindingInPlace (int **,int ,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_1__* mapplanes ;
 int vec3_origin ;

winding_t *BaseWindingForNode( node_t *node ){
 winding_t *w;
 node_t *n;
 plane_t *plane;
 vec3_t normal;
 vec_t dist;

 w = BaseWindingForPlane( mapplanes[node->planenum].normal
        , mapplanes[node->planenum].dist );


 for ( n = node->parent ; n && w ; )
 {
  plane = &mapplanes[n->planenum];

  if ( n->children[0] == node ) {
   ChopWindingInPlace( &w, plane->normal, plane->dist, BASE_WINDING_EPSILON );
  }
  else
  {
   VectorSubtract( vec3_origin, plane->normal, normal );
   dist = -plane->dist;
   ChopWindingInPlace( &w, normal, dist, BASE_WINDING_EPSILON );
  }
  node = n;
  n = n->parent;
 }

 return w;
}

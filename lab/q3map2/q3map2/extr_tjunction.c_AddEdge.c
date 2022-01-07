
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int qboolean ;
struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; } ;
struct TYPE_7__ {void* dist1; void* dist2; int normal2; scalar_t__* origin; int normal1; scalar_t__* dir; TYPE_1__ chain; } ;
typedef TYPE_2__ edgeLine_t ;
typedef int bspDrawVert_t ;
struct TYPE_8__ {float length; int ** dv; } ;


 void* DotProduct (scalar_t__*,int ) ;
 int Error (char*) ;
 int InsertPointOnEdge (scalar_t__*,TYPE_2__*) ;
 int MAX_EDGE_LINES ;
 size_t MAX_ORIGINAL_EDGES ;
 int MakeNormalVectors (scalar_t__*,int ,int ) ;
 float POINT_ON_LINE_EPSILON ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 float VectorNormalize (scalar_t__*,scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int c_degenerateEdges ;
 TYPE_2__* edgeLines ;
 double fabs (scalar_t__) ;
 int numEdgeLines ;
 size_t numOriginalEdges ;
 TYPE_3__* originalEdges ;

int AddEdge( vec3_t v1, vec3_t v2, qboolean createNonAxial ) {
 int i;
 edgeLine_t *e;
 float d;
 vec3_t dir;

 VectorSubtract( v2, v1, dir );
 d = VectorNormalize( dir, dir );
 if ( d < 0.1 ) {

  c_degenerateEdges++;
  return -1;
 }

 if ( !createNonAxial ) {
  if ( fabs( dir[0] + dir[1] + dir[2] ) != 1.0 ) {
   if ( numOriginalEdges == MAX_ORIGINAL_EDGES ) {
    Error( "MAX_ORIGINAL_EDGES" );
   }
   originalEdges[ numOriginalEdges ].dv[0] = (bspDrawVert_t *)v1;
   originalEdges[ numOriginalEdges ].dv[1] = (bspDrawVert_t *)v2;
   originalEdges[ numOriginalEdges ].length = d;
   numOriginalEdges++;
   return -1;
  }
 }

 for ( i = 0 ; i < numEdgeLines ; i++ ) {
  e = &edgeLines[i];

  d = DotProduct( v1, e->normal1 ) - e->dist1;
  if ( d < -POINT_ON_LINE_EPSILON || d > POINT_ON_LINE_EPSILON ) {
   continue;
  }
  d = DotProduct( v1, e->normal2 ) - e->dist2;
  if ( d < -POINT_ON_LINE_EPSILON || d > POINT_ON_LINE_EPSILON ) {
   continue;
  }

  d = DotProduct( v2, e->normal1 ) - e->dist1;
  if ( d < -POINT_ON_LINE_EPSILON || d > POINT_ON_LINE_EPSILON ) {
   continue;
  }
  d = DotProduct( v2, e->normal2 ) - e->dist2;
  if ( d < -POINT_ON_LINE_EPSILON || d > POINT_ON_LINE_EPSILON ) {
   continue;
  }


  InsertPointOnEdge( v1, e );
  InsertPointOnEdge( v2, e );
  return i;
 }


 if ( numEdgeLines >= MAX_EDGE_LINES ) {
  Error( "MAX_EDGE_LINES" );
 }

 e = &edgeLines[ numEdgeLines ];
 numEdgeLines++;

 e->chain.next = e->chain.prev = &e->chain;

 VectorCopy( v1, e->origin );
 VectorCopy( dir, e->dir );

 MakeNormalVectors( e->dir, e->normal1, e->normal2 );
 e->dist1 = DotProduct( e->origin, e->normal1 );
 e->dist2 = DotProduct( e->origin, e->normal2 );

 InsertPointOnEdge( v1, e );
 InsertPointOnEdge( v2, e );

 return numEdgeLines - 1;
}

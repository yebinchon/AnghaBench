
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec4_t ;
struct TYPE_12__ {int numVerts; int plane; TYPE_1__* v; } ;
typedef TYPE_2__ traceWinding_t ;
struct TYPE_13__ {scalar_t__ type; int* children; int plane; } ;
typedef TYPE_3__ traceNode_t ;
struct TYPE_11__ {int xyz; } ;


 int AddItemToTraceNode (TYPE_3__*,int) ;
 int AddTraceWinding (TYPE_2__*) ;
 int ClipTraceWinding (TYPE_2__*,scalar_t__*,TYPE_2__*,TYPE_2__*) ;
 float DotProduct (scalar_t__*,scalar_t__*) ;
 int Error (char*,int) ;
 int PlaneFromPoints (int ,int ,int ,int ) ;
 int Vector4Copy (int ,scalar_t__*) ;
 int VectorSubtract (int ,scalar_t__*,scalar_t__*) ;
 float fabs (scalar_t__) ;
 int headNodeNum ;
 int numTraceNodes ;
 TYPE_3__* traceNodes ;
 int vec3_origin ;

__attribute__((used)) static void FilterTraceWindingIntoNodes_r( traceWinding_t *tw, int nodeNum ){
 int num;
 vec4_t plane1, plane2, reverse;
 traceNode_t *node;
 traceWinding_t front, back;



 if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
  return;
 }


 node = &traceNodes[ nodeNum ];


 if ( node->type >= 0 ) {

  if ( nodeNum == headNodeNum ) {
   if ( !PlaneFromPoints( tw->plane, tw->v[ 0 ].xyz, tw->v[ 1 ].xyz, tw->v[ 2 ].xyz ) ) {
    return;
   }
  }


  if ( node->children[ 0 ] == 0 || node->children[ 1 ] == 0 ) {
   Error( "Invalid tracenode: %d", nodeNum );
  }


  Vector4Copy( node->plane, plane1 );


  Vector4Copy( tw->plane, plane2 );


  VectorSubtract( vec3_origin, plane2, reverse );
  reverse[ 3 ] = -plane2[ 3 ];


  if ( DotProduct( plane1, plane2 ) > 0.999f && fabs( plane1[ 3 ] - plane2[ 3 ] ) < 0.001f ) {
   FilterTraceWindingIntoNodes_r( tw, node->children[ 0 ] );
   return;
  }


  if ( DotProduct( plane1, reverse ) > 0.999f && fabs( plane1[ 3 ] - reverse[ 3 ] ) < 0.001f ) {
   FilterTraceWindingIntoNodes_r( tw, node->children[ 1 ] );
   return;
  }


  ClipTraceWinding( tw, plane1, &front, &back );


  if ( front.numVerts >= 3 ) {
   FilterTraceWindingIntoNodes_r( &front, node->children[ 0 ] );
  }
  if ( back.numVerts >= 3 ) {
   FilterTraceWindingIntoNodes_r( &back, node->children[ 1 ] );
  }


  return;
 }


 num = AddTraceWinding( tw );
 AddItemToTraceNode( node, num );
}

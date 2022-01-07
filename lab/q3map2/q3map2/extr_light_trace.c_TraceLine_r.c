
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {scalar_t__ numTestNodes; int* testNodes; scalar_t__ testAll; void* passSolid; int hit; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_6__ {int type; scalar_t__ numItems; float* plane; int* children; } ;
typedef TYPE_2__ traceNode_t ;
typedef void* qboolean ;


 float DotProduct (float*,float*) ;
 scalar_t__ MAX_TRACE_TEST_NODES ;



 int TRACE_LEAF_SOLID ;
 float TRACE_ON_EPSILON ;
 int VectorCopy (float*,int ) ;
 void* qfalse ;
 void* qtrue ;
 TYPE_2__* traceNodes ;

__attribute__((used)) static qboolean TraceLine_r( int nodeNum, vec3_t origin, vec3_t end, trace_t *trace ){
 traceNode_t *node;
 int side;
 float front, back, frac;
 vec3_t mid;
 qboolean r;



 if ( nodeNum < 0 ) {
  VectorCopy( origin, trace->hit );
  trace->passSolid = qtrue;
  return qtrue;
 }


 node = &traceNodes[ nodeNum ];


 if ( node->type == TRACE_LEAF_SOLID ) {
  VectorCopy( origin, trace->hit );
  trace->passSolid = qtrue;
  return qtrue;
 }


 if ( node->type < 0 ) {

  if ( node->numItems > 0 && trace->numTestNodes < MAX_TRACE_TEST_NODES ) {
   trace->testNodes[ trace->numTestNodes++ ] = nodeNum;
  }
  return qfalse;
 }


 if ( trace->testAll && node->numItems == 0 ) {
  return qfalse;
 }


 switch ( node->type )
 {
 case 130:
  front = origin[ 0 ] - node->plane[ 3 ];
  back = end[ 0 ] - node->plane[ 3 ];
  break;

 case 129:
  front = origin[ 1 ] - node->plane[ 3 ];
  back = end[ 1 ] - node->plane[ 3 ];
  break;

 case 128:
  front = origin[ 2 ] - node->plane[ 3 ];
  back = end[ 2 ] - node->plane[ 3 ];
  break;

 default:
  front = DotProduct( origin, node->plane ) - node->plane[ 3 ];
  back = DotProduct( end, node->plane ) - node->plane[ 3 ];
  break;
 }


 if ( front >= -TRACE_ON_EPSILON && back >= -TRACE_ON_EPSILON ) {
  return TraceLine_r( node->children[ 0 ], origin, end, trace );
 }


 if ( front < TRACE_ON_EPSILON && back < TRACE_ON_EPSILON ) {
  return TraceLine_r( node->children[ 1 ], origin, end, trace );
 }


 side = front < 0;


 frac = front / ( front - back );
 mid[ 0 ] = origin[ 0 ] + ( end[ 0 ] - origin[ 0 ] ) * frac;
 mid[ 1 ] = origin[ 1 ] + ( end[ 1 ] - origin[ 1 ] ) * frac;
 mid[ 2 ] = origin[ 2 ] + ( end[ 2 ] - origin[ 2 ] ) * frac;







 r = TraceLine_r( node->children[ side ], origin, mid, trace );
 if ( r ) {
  return r;
 }


 return TraceLine_r( node->children[ !side ], mid, end, trace );
}

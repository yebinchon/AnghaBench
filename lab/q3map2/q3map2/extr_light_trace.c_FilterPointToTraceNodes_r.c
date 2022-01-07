
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {scalar_t__ type; float* plane; int* children; } ;
typedef TYPE_1__ traceNode_t ;


 float DotProduct (int ,float*) ;
 int Sys_Printf (char*,int) ;
 int numTraceNodes ;
 TYPE_1__* traceNodes ;

__attribute__((used)) static int FilterPointToTraceNodes_r( vec3_t pt, int nodeNum ){
 float dot;
 traceNode_t *node;


 if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
  return -1;
 }

 node = &traceNodes[ nodeNum ];

 if ( node->type >= 0 ) {
  dot = DotProduct( pt, node->plane ) - node->plane[ 3 ];
  if ( dot > -0.001f ) {
   FilterPointToTraceNodes_r( pt, node->children[ 0 ] );
  }
  if ( dot < 0.001f ) {
   FilterPointToTraceNodes_r( pt, node->children[ 1 ] );
  }
  return -1;
 }

 Sys_Printf( "%d ", nodeNum );

 return nodeNum;
}

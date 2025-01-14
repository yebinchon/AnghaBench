
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int compileFlags; int numTestNodes; float distance; scalar_t__ numSurfaces; size_t* surfaces; size_t* testNodes; int end; int origin; scalar_t__ testAll; void* opaque; void* passSolid; int testOcclusion; int recvShadows; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_12__ {size_t infoNum; } ;
typedef TYPE_2__ traceTriangle_t ;
struct TYPE_13__ {int numItems; size_t* items; } ;
typedef TYPE_3__ traceNode_t ;
typedef int traceInfo_t ;
struct TYPE_14__ {scalar_t__ childSurfaceNum; } ;


 int C_SKY ;
 int MAX_TRACE_TEST_NODES ;
 int TraceLine_r (int ,int ,int ,TYPE_1__*) ;
 scalar_t__ TraceTriangle (int *,TYPE_2__*,TYPE_1__*) ;
 int headNodeNum ;
 scalar_t__ noSurfaces ;
 void* qfalse ;
 void* qtrue ;
 int skyboxNodeNum ;
 TYPE_6__* surfaceInfos ;
 int * traceInfos ;
 TYPE_3__* traceNodes ;
 TYPE_2__* traceTriangles ;

void TraceLine( trace_t *trace ){
 int i, j;
 traceNode_t *node;
 traceTriangle_t *tt;
 traceInfo_t *ti;



 trace->passSolid = qfalse;
 trace->opaque = qfalse;
 trace->compileFlags = 0;
 trace->numTestNodes = 0;


 if ( !trace->recvShadows || !trace->testOcclusion || trace->distance <= 0.00001f ) {
  return;
 }


 TraceLine_r( headNodeNum, trace->origin, trace->end, trace );
 if ( trace->passSolid && !trace->testAll ) {
  trace->opaque = qtrue;
  return;
 }


 if ( noSurfaces ) {
  return;
 }


 if ( trace->testAll && trace->numTestNodes < MAX_TRACE_TEST_NODES &&
   trace->compileFlags & C_SKY &&
   ( trace->numSurfaces == 0 || surfaceInfos[ trace->surfaces[ 0 ] ].childSurfaceNum < 0 ) ) {

  TraceLine_r( skyboxNodeNum, trace->origin, trace->end, trace );
 }


 for ( i = 0; i < trace->numTestNodes; i++ )
 {

  node = &traceNodes[ trace->testNodes[ i ] ];


  for ( j = 0; j < node->numItems; j++ )
  {
   tt = &traceTriangles[ node->items[ j ] ];
   ti = &traceInfos[ tt->infoNum ];
   if ( TraceTriangle( ti, tt, trace ) ) {
    return;
   }


  }
 }
}

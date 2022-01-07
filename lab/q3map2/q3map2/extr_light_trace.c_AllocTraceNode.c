
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int maxs; int mins; int type; } ;
typedef TYPE_1__ traceNode_t ;


 int ClearBounds (int ,int ) ;
 scalar_t__ GROW_TRACE_NODES ;
 int TRACE_LEAF ;
 int free (TYPE_1__*) ;
 int maxTraceNodes ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int numTraceNodes ;
 TYPE_1__* safe_malloc (int) ;
 TYPE_1__* traceNodes ;

__attribute__((used)) static int AllocTraceNode( void ){
 traceNode_t *temp;



 if ( numTraceNodes >= maxTraceNodes ) {

  maxTraceNodes += GROW_TRACE_NODES;
  temp = safe_malloc( maxTraceNodes * sizeof( traceNode_t ) );
  if ( traceNodes != ((void*)0) ) {
   memcpy( temp, traceNodes, numTraceNodes * sizeof( traceNode_t ) );
   free( traceNodes );
  }
  traceNodes = temp;
 }


 memset( &traceNodes[ numTraceNodes ], 0, sizeof( traceNode_t ) );
 traceNodes[ numTraceNodes ].type = TRACE_LEAF;
 ClearBounds( traceNodes[ numTraceNodes ].mins, traceNodes[ numTraceNodes ].maxs );
 numTraceNodes++;


 return ( numTraceNodes - 1 );
}

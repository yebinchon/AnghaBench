
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_12__ {int numVerts; TYPE_1__* v; } ;
typedef TYPE_2__ traceWinding_t ;
struct TYPE_13__ {int type; int* children; float* mins; float* maxs; int numItems; size_t* items; float* plane; int maxItems; } ;
typedef TYPE_3__ traceNode_t ;
struct TYPE_11__ {scalar_t__* xyz; } ;


 int AddItemToTraceNode (TYPE_3__*,int) ;
 int AddPointToBounds (scalar_t__*,float*,float*) ;
 int AddTraceWinding (TYPE_2__*) ;
 int AllocTraceNode () ;
 int ClearBounds (float*,float*) ;
 int ClipTraceWinding (TYPE_2__*,float*,TYPE_2__*,TYPE_2__*) ;
 int MAX_NODE_TRIANGLES ;
 int MAX_TRACE_DEPTH ;
 scalar_t__ MIN_NODE_SIZE ;
 int PLANE_X ;
 int PLANE_Y ;
 int PLANE_Z ;
 int VectorClear (double*) ;
 int VectorSubtract (float*,float*,scalar_t__*) ;
 size_t deadWinding ;
 float floor (float) ;
 int free (size_t*) ;
 int maxTraceDepth ;
 int numTraceLeafNodes ;
 int numTraceNodes ;
 void* safe_malloc (int) ;
 TYPE_3__* traceNodes ;
 TYPE_2__* traceWindings ;

__attribute__((used)) static void SubdivideTraceNode_r( int nodeNum, int depth ){
 int i, j, count, num, frontNum, backNum, type;
 vec3_t size;
 float dist;
 double average[ 3 ];
 traceNode_t *node, *frontNode, *backNode;
 traceWinding_t *tw, front, back;



 if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
  return;
 }


 node = &traceNodes[ nodeNum ];


 if ( depth >= MAX_TRACE_DEPTH ) {

  numTraceLeafNodes++;
  return;
 }
 depth++;


 if ( node->type >= 0 ) {

  frontNum = node->children[ 0 ];
  backNum = node->children[ 1 ];
  SubdivideTraceNode_r( frontNum, depth );
  SubdivideTraceNode_r( backNum, depth );
  return;
 }


 ClearBounds( node->mins, node->maxs );
 VectorClear( average );
 count = 0;
 for ( i = 0; i < node->numItems; i++ )
 {

  tw = &traceWindings[ node->items[ i ] ];


  for ( j = 0; j < tw->numVerts; j++ )
  {
   AddPointToBounds( tw->v[ j ].xyz, node->mins, node->maxs );
   average[ 0 ] += tw->v[ j ].xyz[ 0 ];
   average[ 1 ] += tw->v[ j ].xyz[ 1 ];
   average[ 2 ] += tw->v[ j ].xyz[ 2 ];
   count++;
  }
 }



 if ( ( count - ( node->numItems * 2 ) ) < MAX_NODE_TRIANGLES ) {

  numTraceLeafNodes++;
  return;
 }


 VectorSubtract( node->maxs, node->mins, size );
 if ( size[ 0 ] >= size[ 1 ] && size[ 0 ] >= size[ 2 ] ) {
  type = PLANE_X;
 }
 else if ( size[ 1 ] >= size[ 0 ] && size[ 1 ] >= size[ 2 ] ) {
  type = PLANE_Y;
 }
 else{
  type = PLANE_Z;
 }


 if ( size[ type ] <= MIN_NODE_SIZE ) {

  numTraceLeafNodes++;
  return;
 }


 if ( depth > maxTraceDepth ) {
  maxTraceDepth = depth;
 }


 dist = floor( average[ type ] / count );


 if ( dist <= node->mins[ type ] || dist >= node->maxs[ type ] ) {
  dist = floor( 0.5f * ( node->mins[ type ] + node->maxs[ type ] ) );
 }


 frontNum = AllocTraceNode();
 backNum = AllocTraceNode();


 node = &traceNodes[ nodeNum ];
 frontNode = &traceNodes[ frontNum ];
 backNode = &traceNodes[ backNum ];


 node->type = type;
 node->plane[ type ] = 1.0f;
 node->plane[ 3 ] = dist;
 node->children[ 0 ] = frontNum;
 node->children[ 1 ] = backNum;


 frontNode->maxItems = ( node->maxItems >> 1 );
 frontNode->items = safe_malloc( frontNode->maxItems * sizeof( *frontNode->items ) );


 backNode->maxItems = ( node->maxItems >> 1 );
 backNode->items = safe_malloc( backNode->maxItems * sizeof( *backNode->items ) );


 for ( i = 0; i < node->numItems; i++ )
 {

  tw = &traceWindings[ node->items[ i ] ];


  ClipTraceWinding( tw, node->plane, &front, &back );


  if ( front.numVerts >= 3 || back.numVerts >= 3 ) {
   deadWinding = node->items[ i ];
  }


  if ( front.numVerts >= 3 ) {
   num = AddTraceWinding( &front );
   AddItemToTraceNode( frontNode, num );
  }


  if ( back.numVerts >= 3 ) {
   num = AddTraceWinding( &back );
   AddItemToTraceNode( backNode, num );
  }
 }


 node->numItems = 0;
 node->maxItems = 0;
 free( node->items );
 node->items = ((void*)0);


 if ( frontNode->numItems <= 0 ) {
  frontNode->maxItems = 0;
  free( frontNode->items );
  frontNode->items = ((void*)0);
 }

 if ( backNode->numItems <= 0 ) {
  backNode->maxItems = 0;
  free( backNode->items );
  backNode->items = ((void*)0);
 }


 SubdivideTraceNode_r( frontNum, depth );
 SubdivideTraceNode_r( backNum, depth );
}

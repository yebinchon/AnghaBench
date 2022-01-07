
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tt ;
struct TYPE_10__ {int numVerts; TYPE_1__* v; int infoNum; } ;
typedef TYPE_2__ traceWinding_t ;
struct TYPE_11__ {int edge2; TYPE_1__* v; int edge1; int infoNum; } ;
typedef TYPE_3__ traceTriangle_t ;
struct TYPE_12__ {scalar_t__ type; int* children; int numItems; int maxItems; int* items; } ;
typedef TYPE_4__ traceNode_t ;
struct TYPE_9__ {int xyz; } ;


 int AddItemToTraceNode (TYPE_4__*,int) ;
 int AddTraceTriangle (TYPE_3__*) ;
 int VectorSubtract (int ,int ,int ) ;
 int free (int*) ;
 int numTraceNodes ;
 int* safe_malloc (int) ;
 TYPE_4__* traceNodes ;
 TYPE_2__* traceWindings ;

__attribute__((used)) static int TriangulateTraceNode_r( int nodeNum ){
 int i, j, num, frontNum, backNum, numWindings, *windings;
 traceNode_t *node;
 traceWinding_t *tw;
 traceTriangle_t tt;



 if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
  return 0;
 }


 node = &traceNodes[ nodeNum ];


 if ( node->type >= 0 ) {

  frontNum = node->children[ 0 ];
  backNum = node->children[ 1 ];
  node->numItems = TriangulateTraceNode_r( frontNum );
  node->numItems += TriangulateTraceNode_r( backNum );
  return node->numItems;
 }


 if ( node->numItems == 0 ) {
  node->maxItems = 0;
  if ( node->items != ((void*)0) ) {
   free( node->items );
  }
  return node->numItems;
 }


 numWindings = node->numItems;
 windings = node->items;


 node->numItems = 0;
 node->maxItems = numWindings * 2;
 node->items = safe_malloc( node->maxItems * sizeof( tt ) );


 for ( i = 0; i < numWindings; i++ )
 {

  tw = &traceWindings[ windings[ i ] ];


  tt.infoNum = tw->infoNum;
  tt.v[ 0 ] = tw->v[ 0 ];


  for ( j = 1; j + 1 < tw->numVerts; j++ )
  {

   tt.v[ 1 ] = tw->v[ j ];
   tt.v[ 2 ] = tw->v[ j + 1 ];


   VectorSubtract( tt.v[ 1 ].xyz, tt.v[ 0 ].xyz, tt.edge1 );
   VectorSubtract( tt.v[ 2 ].xyz, tt.v[ 0 ].xyz, tt.edge2 );


   num = AddTraceTriangle( &tt );
   AddItemToTraceNode( node, num );
  }
 }


 if ( windings != ((void*)0) ) {
  free( windings );
 }


 return node->numItems;
}

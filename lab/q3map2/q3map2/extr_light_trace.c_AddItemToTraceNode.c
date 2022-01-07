
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numItems; int maxItems; int* items; } ;
typedef TYPE_1__ traceNode_t ;


 int GROW_NODE_ITEMS ;
 int free (int*) ;
 int memcpy (void*,int*,int) ;
 void* safe_malloc (int) ;
 TYPE_1__* traceNodes ;

__attribute__((used)) static int AddItemToTraceNode( traceNode_t *node, int num ){
 void *temp;



 if ( num < 0 ) {
  return -1;
 }


 if ( node->numItems >= node->maxItems ) {

  if ( node == traceNodes ) {
   node->maxItems *= 2;
  }
  else{
   node->maxItems += GROW_NODE_ITEMS;
  }
  if ( node->maxItems <= 0 ) {
   node->maxItems = GROW_NODE_ITEMS;
  }
  temp = safe_malloc( node->maxItems * sizeof( *node->items ) );
  if ( node->items != ((void*)0) ) {
   memcpy( temp, node->items, node->numItems * sizeof( *node->items ) );
   free( node->items );
  }
  node->items = (int*) temp;
 }


 node->items[ node->numItems ] = num;
 node->numItems++;


 return ( node->numItems - 1 );
}

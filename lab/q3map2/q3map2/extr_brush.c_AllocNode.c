
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int memset (int *,int ,int) ;
 int * safe_malloc (int) ;

node_t *AllocNode( void ){
 node_t *node;

 node = safe_malloc( sizeof( *node ) );
 memset( node, 0, sizeof( *node ) );

 return node;
}

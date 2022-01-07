
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ planenum; scalar_t__ volume; int brushlist; struct TYPE_4__** children; } ;
typedef TYPE_1__ node_t ;


 int FreeBrush (scalar_t__) ;
 int FreeBrushList (int ) ;
 scalar_t__ PLANENUM_LEAF ;
 int free (TYPE_1__*) ;

void FreeTree_r( node_t *node ){

 if ( node->planenum != PLANENUM_LEAF ) {
  FreeTree_r( node->children[0] );
  FreeTree_r( node->children[1] );
 }


 FreeBrushList( node->brushlist );


 if ( node->volume ) {
  FreeBrush( node->volume );
 }

 free( node );
}

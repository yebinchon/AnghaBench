
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__** children; int planenum; void* areaportal; void* opaque; TYPE_2__* brushlist; } ;
typedef TYPE_1__ node_t ;
struct TYPE_10__ {int compileFlags; int numsides; scalar_t__ opaque; int detail; struct TYPE_10__* next; } ;
typedef TYPE_2__ brush_t ;


 int C_AREAPORTAL ;
 int FreeBrush (TYPE_2__*) ;
 int PLANENUM_LEAF ;
 int SplitBrush (TYPE_2__*,int ,TYPE_2__**,TYPE_2__**) ;
 void* qfalse ;
 void* qtrue ;

int FilterBrushIntoTree_r( brush_t *b, node_t *node ){
 brush_t *front, *back;
 int c;



 if ( b == ((void*)0) ) {
  return 0;
 }


 if ( node->planenum == PLANENUM_LEAF ) {

  b->next = node->brushlist;
  node->brushlist = b;


  if ( !b->detail ) {
   if ( b->opaque ) {
    node->opaque = qtrue;
    node->areaportal = qfalse;
   }
   else if ( b->compileFlags & C_AREAPORTAL ) {
    if ( !node->opaque ) {
     node->areaportal = qtrue;
    }
   }
  }

  return 1;
 }


 c = b->numsides;
 SplitBrush( b, node->planenum, &front, &back );
 FreeBrush( b );

 c = 0;
 c += FilterBrushIntoTree_r( front, node->children[ 0 ] );
 c += FilterBrushIntoTree_r( back, node->children[ 1 ] );

 return c;
}

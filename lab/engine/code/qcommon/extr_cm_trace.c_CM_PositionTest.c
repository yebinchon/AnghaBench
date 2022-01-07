
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ allsolid; } ;
struct TYPE_9__ {TYPE_1__ trace; int * size; int start; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_10__ {int** bounds; int count; int maxcount; int* list; int overflowed; scalar_t__ lastLeaf; int storeLeafs; } ;
typedef TYPE_3__ leafList_t ;
struct TYPE_11__ {int * leafs; int checkcount; } ;


 int CM_BoxLeafnums_r (TYPE_3__*,int ) ;
 int CM_StoreLeafs ;
 int CM_TestInLeaf (TYPE_2__*,int *) ;
 int MAX_POSITION_LEAFS ;
 int VectorAdd (int ,int ,int*) ;
 TYPE_4__ cm ;
 int qfalse ;

void CM_PositionTest( traceWork_t *tw ) {
 int leafs[MAX_POSITION_LEAFS];
 int i;
 leafList_t ll;


 VectorAdd( tw->start, tw->size[0], ll.bounds[0] );
 VectorAdd( tw->start, tw->size[1], ll.bounds[1] );

 for (i=0 ; i<3 ; i++) {
  ll.bounds[0][i] -= 1;
  ll.bounds[1][i] += 1;
 }

 ll.count = 0;
 ll.maxcount = MAX_POSITION_LEAFS;
 ll.list = leafs;
 ll.storeLeafs = CM_StoreLeafs;
 ll.lastLeaf = 0;
 ll.overflowed = qfalse;

 cm.checkcount++;

 CM_BoxLeafnums_r( &ll, 0 );


 cm.checkcount++;


 for (i=0 ; i < ll.count ; i++) {
  CM_TestInLeaf( tw, &cm.leafs[leafs[i]] );
  if ( tw->trace.allsolid ) {
   break;
  }
 }
}

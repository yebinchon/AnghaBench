
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int count; int maxcount; int* list; int lastLeaf; int overflowed; int storeLeafs; int * bounds; } ;
typedef TYPE_1__ leafList_t ;
struct TYPE_5__ {int checkcount; } ;


 int CM_BoxLeafnums_r (TYPE_1__*,int ) ;
 int CM_StoreLeafs ;
 int VectorCopy (int const,int ) ;
 TYPE_2__ cm ;
 int qfalse ;

int CM_BoxLeafnums( const vec3_t mins, const vec3_t maxs, int *list, int listsize, int *lastLeaf) {
 leafList_t ll;

 cm.checkcount++;

 VectorCopy( mins, ll.bounds[0] );
 VectorCopy( maxs, ll.bounds[1] );
 ll.count = 0;
 ll.maxcount = listsize;
 ll.list = list;
 ll.storeLeafs = CM_StoreLeafs;
 ll.lastLeaf = 0;
 ll.overflowed = qfalse;

 CM_BoxLeafnums_r( &ll, 0 );

 *lastLeaf = ll.lastLeaf;
 return ll.count;
}

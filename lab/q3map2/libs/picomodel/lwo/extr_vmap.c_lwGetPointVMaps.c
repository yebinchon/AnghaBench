
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lwVMapPt ;
struct TYPE_8__ {int nverts; size_t* vindex; struct TYPE_8__* next; int perpoly; } ;
typedef TYPE_2__ lwVMap ;
struct TYPE_9__ {int count; TYPE_1__* pt; } ;
typedef TYPE_3__ lwPointList ;
struct TYPE_10__ {int index; TYPE_2__* vmap; } ;
struct TYPE_7__ {int nvmaps; TYPE_6__* vm; } ;


 TYPE_6__* _pico_calloc (int,int) ;

int lwGetPointVMaps( lwPointList *point, lwVMap *vmap ){
 lwVMap *vm;
 int i, j, n;



 vm = vmap;
 while ( vm ) {
  if ( !vm->perpoly ) {
   for ( i = 0; i < vm->nverts; i++ )
    ++point->pt[ vm->vindex[ i ]].nvmaps;
  }
  vm = vm->next;
 }



 for ( i = 0; i < point->count; i++ ) {
  if ( point->pt[ i ].nvmaps ) {
   point->pt[ i ].vm = _pico_calloc( point->pt[ i ].nvmaps, sizeof( lwVMapPt ) );
   if ( !point->pt[ i ].vm ) {
    return 0;
   }
   point->pt[ i ].nvmaps = 0;
  }
 }



 vm = vmap;
 while ( vm ) {
  if ( !vm->perpoly ) {
   for ( i = 0; i < vm->nverts; i++ ) {
    j = vm->vindex[ i ];
    n = point->pt[ j ].nvmaps;
    point->pt[ j ].vm[ n ].vmap = vm;
    point->pt[ j ].vm[ n ].index = i;
    ++point->pt[ j ].nvmaps;
   }
  }
  vm = vm->next;
 }

 return 1;
}

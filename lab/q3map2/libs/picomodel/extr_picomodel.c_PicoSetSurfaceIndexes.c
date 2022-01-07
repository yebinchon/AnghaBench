
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * index; } ;
typedef TYPE_1__ picoSurface_t ;
typedef int picoIndex_t ;


 int PicoAdjustSurface (TYPE_1__*,int ,int ,int ,int,int ) ;
 int memcpy (int *,int *,int) ;

void PicoSetSurfaceIndexes( picoSurface_t *surface, int num, picoIndex_t *index, int count ){
 if ( num < 0 || index == ((void*)0) || count < 1 ) {
  return;
 }
 if ( !PicoAdjustSurface( surface, 0, 0, 0, num + count, 0 ) ) {
  return;
 }
 memcpy( &surface->index[ num ], index, count * sizeof( surface->index[ num ] ) );
}

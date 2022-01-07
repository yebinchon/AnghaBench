
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * index; } ;
typedef TYPE_1__ picoSurface_t ;
typedef int picoIndex_t ;


 int PicoAdjustSurface (TYPE_1__*,int ,int ,int ,int,int ) ;

void PicoSetSurfaceIndex( picoSurface_t *surface, int num, picoIndex_t index ){
 if ( surface == ((void*)0) || num < 0 ) {
  return;
 }
 if ( !PicoAdjustSurface( surface, 0, 0, 0, num + 1, 0 ) ) {
  return;
 }
 surface->index[ num ] = index;
}

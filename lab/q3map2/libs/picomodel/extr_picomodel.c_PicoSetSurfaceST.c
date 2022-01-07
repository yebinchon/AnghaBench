
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void** picoVec2_t ;
struct TYPE_4__ {void**** st; } ;
typedef TYPE_1__ picoSurface_t ;


 int PicoAdjustSurface (TYPE_1__*,int,int,int ,int ,int ) ;

void PicoSetSurfaceST( picoSurface_t *surface, int array, int num, picoVec2_t st ){
 if ( surface == ((void*)0) || num < 0 || st == ((void*)0) ) {
  return;
 }
 if ( !PicoAdjustSurface( surface, num + 1, array + 1, 0, 0, 0 ) ) {
  return;
 }
 surface->st[ array ][ num ][ 0 ] = st[ 0 ];
 surface->st[ array ][ num ][ 1 ] = st[ 1 ];
}

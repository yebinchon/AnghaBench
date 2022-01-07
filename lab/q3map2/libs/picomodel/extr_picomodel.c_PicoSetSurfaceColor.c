
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void**** color; } ;
typedef TYPE_1__ picoSurface_t ;
typedef void** picoColor_t ;


 int PicoAdjustSurface (TYPE_1__*,int,int ,int,int ,int ) ;

void PicoSetSurfaceColor( picoSurface_t *surface, int array, int num, picoColor_t color ){
 if ( surface == ((void*)0) || num < 0 || color == ((void*)0) ) {
  return;
 }
 if ( !PicoAdjustSurface( surface, num + 1, 0, array + 1, 0, 0 ) ) {
  return;
 }
 surface->color[ array ][ num ][ 0 ] = color[ 0 ];
 surface->color[ array ][ num ][ 1 ] = color[ 1 ];
 surface->color[ array ][ num ][ 2 ] = color[ 2 ];
 surface->color[ array ][ num ][ 3 ] = color[ 3 ];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numColorArrays; int numVertexes; int *** color; } ;
typedef TYPE_1__ picoSurface_t ;
typedef int picoByte_t ;



picoByte_t *PicoGetSurfaceColor( picoSurface_t *surface, int array, int num ){
 if ( surface == ((void*)0) || array < 0 || array > surface->numColorArrays || num < 0 || num > surface->numVertexes ) {
  return ((void*)0);
 }
 return surface->color[ array ][ num ];
}

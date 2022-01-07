
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoVec_t ;
struct TYPE_3__ {int numSTArrays; int numVertexes; int *** st; } ;
typedef TYPE_1__ picoSurface_t ;



picoVec_t *PicoGetSurfaceST( picoSurface_t *surface, int array, int num ){
 if ( surface == ((void*)0) || array < 0 || array > surface->numSTArrays || num < 0 || num > surface->numVertexes ) {
  return ((void*)0);
 }
 return surface->st[ array ][ num ];
}

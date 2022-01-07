
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numIndexes; int * index; } ;
typedef TYPE_1__ picoSurface_t ;
typedef int picoIndex_t ;



picoIndex_t *PicoGetSurfaceIndexes( picoSurface_t *surface, int num ){
 if ( surface == ((void*)0) || num < 0 || num > surface->numIndexes ) {
  return ((void*)0);
 }
 return &surface->index[ num ];
}

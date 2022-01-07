
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoVec_t ;
struct TYPE_3__ {int numVertexes; int ** xyz; } ;
typedef TYPE_1__ picoSurface_t ;



picoVec_t *PicoGetSurfaceXYZ( picoSurface_t *surface, int num ){
 if ( surface == ((void*)0) || num < 0 || num > surface->numVertexes ) {
  return ((void*)0);
 }
 return surface->xyz[ num ];
}

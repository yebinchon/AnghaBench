
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
typedef TYPE_1__ picoSurface_t ;



void PicoSetSurfaceData( picoSurface_t *surface, void *data ){
 if ( surface == ((void*)0) ) {
  return;
 }
 surface->data = data;
}

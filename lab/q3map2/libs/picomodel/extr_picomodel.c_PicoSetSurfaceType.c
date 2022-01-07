
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ picoSurface_t ;
typedef int picoSurfaceType_t ;



void PicoSetSurfaceType( picoSurface_t *surface, picoSurfaceType_t type ){
 if ( surface == ((void*)0) ) {
  return;
 }
 surface->type = type;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* special; } ;
typedef TYPE_1__ picoSurface_t ;


 int PICO_MAX_SPECIAL ;

void PicoSetSurfaceSpecial( picoSurface_t *surface, int num, int special ){
 if ( surface == ((void*)0) || num < 0 || num >= PICO_MAX_SPECIAL ) {
  return;
 }
 surface->special[ num ] = special;
}

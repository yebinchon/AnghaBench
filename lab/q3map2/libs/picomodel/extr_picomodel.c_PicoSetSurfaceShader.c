
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * shader; } ;
typedef TYPE_1__ picoSurface_t ;
typedef int picoShader_t ;



void PicoSetSurfaceShader( picoSurface_t *surface, picoShader_t *shader ){
 if ( surface == ((void*)0) ) {
  return;
 }
 surface->shader = shader;
}

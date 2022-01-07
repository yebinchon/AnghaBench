
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * picoVec3_t ;
struct TYPE_4__ {int * normal; } ;
typedef TYPE_1__ picoSurface_t ;


 int PicoAdjustSurface (TYPE_1__*,int,int ,int ,int ,int ) ;
 int _pico_copy_vec (int *,int ) ;

void PicoSetSurfaceNormal( picoSurface_t *surface, int num, picoVec3_t normal ){
 if ( surface == ((void*)0) || num < 0 || normal == ((void*)0) ) {
  return;
 }
 if ( !PicoAdjustSurface( surface, num + 1, 0, 0, 0, 0 ) ) {
  return;
 }
 _pico_copy_vec( normal, surface->normal[ num ] );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * picoVec3_t ;
struct TYPE_6__ {TYPE_1__* model; int * xyz; } ;
typedef TYPE_2__ picoSurface_t ;
struct TYPE_5__ {int maxs; int mins; } ;


 int PicoAdjustSurface (TYPE_2__*,int,int ,int ,int ,int ) ;
 int _pico_copy_vec (int *,int ) ;
 int _pico_expand_bounds (int *,int ,int ) ;

void PicoSetSurfaceXYZ( picoSurface_t *surface, int num, picoVec3_t xyz ){
 if ( surface == ((void*)0) || num < 0 || xyz == ((void*)0) ) {
  return;
 }
 if ( !PicoAdjustSurface( surface, num + 1, 0, 0, 0, 0 ) ) {
  return;
 }
 _pico_copy_vec( xyz, surface->xyz[ num ] );
 if ( surface->model != ((void*)0) ) {
  _pico_expand_bounds( xyz, surface->model->mins, surface->model->maxs );
 }
}

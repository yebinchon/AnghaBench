
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoSurface_t ;
struct TYPE_3__ {int numSurfaces; int ** surface; } ;
typedef TYPE_1__ picoModel_t ;



picoSurface_t *PicoGetModelSurface( picoModel_t *model, int num ){

 if ( model == ((void*)0) ) {
  return ((void*)0);
 }
 if ( model->surface == ((void*)0) ) {
  return ((void*)0);
 }
 if ( num < 0 || num >= model->numSurfaces ) {
  return ((void*)0);
 }


 return model->surface[ num ];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numFrames; } ;
typedef TYPE_1__ picoModel_t ;



void PicoSetModelNumFrames( picoModel_t *model, int numFrames ){
 if ( model == ((void*)0) ) {
  return;
 }
 model->numFrames = numFrames;
}

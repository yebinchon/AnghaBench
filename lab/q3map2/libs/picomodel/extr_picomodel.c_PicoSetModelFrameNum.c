
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frameNum; } ;
typedef TYPE_1__ picoModel_t ;



void PicoSetModelFrameNum( picoModel_t *model, int frameNum ){
 if ( model == ((void*)0) ) {
  return;
 }
 model->frameNum = frameNum;
}

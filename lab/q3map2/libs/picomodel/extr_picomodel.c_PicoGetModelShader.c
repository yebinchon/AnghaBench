
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoShader_t ;
struct TYPE_3__ {int numShaders; int ** shader; } ;
typedef TYPE_1__ picoModel_t ;



picoShader_t *PicoGetModelShader( picoModel_t *model, int num ){

 if ( model == ((void*)0) ) {
  return ((void*)0);
 }
 if ( model->shader == ((void*)0) ) {
  return ((void*)0);
 }
 if ( num < 0 || num >= model->numShaders ) {
  return ((void*)0);
 }


 return model->shader[ num ];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float transparency; } ;
typedef TYPE_1__ picoShader_t ;



void PicoSetShaderTransparency( picoShader_t *shader, float value ){
 if ( shader == ((void*)0) ) {
  return;
 }
 shader->transparency = value;


 if ( shader->transparency < 0.0 ) {
  shader->transparency = 0.0;
 }
 if ( shader->transparency > 1.0 ) {
  shader->transparency = 1.0;
 }
}

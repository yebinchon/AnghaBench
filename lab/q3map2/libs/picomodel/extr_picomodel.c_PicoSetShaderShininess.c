
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float shininess; } ;
typedef TYPE_1__ picoShader_t ;



void PicoSetShaderShininess( picoShader_t *shader, float value ){
 if ( shader == ((void*)0) ) {
  return;
 }
 shader->shininess = value;


 if ( shader->shininess < 0.0 ) {
  shader->shininess = 0.0;
 }
 if ( shader->shininess > 127.0 ) {
  shader->shininess = 127.0;
 }
}

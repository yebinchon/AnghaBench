
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float shininess; } ;
typedef TYPE_1__ picoShader_t ;



float PicoGetShaderShininess( picoShader_t *shader ){
 if ( shader == ((void*)0) ) {
  return 0.0f;
 }
 return shader->shininess;
}

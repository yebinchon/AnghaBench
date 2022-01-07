
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** ambientColor; } ;
typedef TYPE_1__ picoShader_t ;
typedef void** picoColor_t ;



void PicoSetShaderAmbientColor( picoShader_t *shader, picoColor_t color ){
 if ( shader == ((void*)0) || color == ((void*)0) ) {
  return;
 }
 shader->ambientColor[ 0 ] = color[ 0 ];
 shader->ambientColor[ 1 ] = color[ 1 ];
 shader->ambientColor[ 2 ] = color[ 2 ];
 shader->ambientColor[ 3 ] = color[ 3 ];
}

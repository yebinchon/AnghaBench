
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** diffuseColor; } ;
typedef TYPE_1__ picoShader_t ;
typedef void** picoColor_t ;



void PicoSetShaderDiffuseColor( picoShader_t *shader, picoColor_t color ){
 if ( shader == ((void*)0) || color == ((void*)0) ) {
  return;
 }
 shader->diffuseColor[ 0 ] = color[ 0 ];
 shader->diffuseColor[ 1 ] = color[ 1 ];
 shader->diffuseColor[ 2 ] = color[ 2 ];
 shader->diffuseColor[ 3 ] = color[ 3 ];
}

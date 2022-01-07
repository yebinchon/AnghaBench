
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** specularColor; } ;
typedef TYPE_1__ picoShader_t ;
typedef void** picoColor_t ;



void PicoSetShaderSpecularColor( picoShader_t *shader, picoColor_t color ){
 if ( shader == ((void*)0) || color == ((void*)0) ) {
  return;
 }
 shader->specularColor[ 0 ] = color[ 0 ];
 shader->specularColor[ 1 ] = color[ 1 ];
 shader->specularColor[ 2 ] = color[ 2 ];
 shader->specularColor[ 3 ] = color[ 3 ];
}

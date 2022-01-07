
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* mapName; } ;
typedef TYPE_1__ picoShader_t ;



char *PicoGetShaderMapName( picoShader_t *shader ){
 if ( shader == ((void*)0) ) {
  return ((void*)0);
 }
 if ( shader->mapName == ((void*)0) ) {
  return (char*) "";
 }
 return shader->mapName;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mapName; } ;
typedef TYPE_1__ picoShader_t ;


 int * _pico_clone_alloc (char*) ;
 int _pico_free (int *) ;

void PicoSetShaderMapName( picoShader_t *shader, char *mapName ){
 if ( shader == ((void*)0) || mapName == ((void*)0) ) {
  return;
 }
 if ( shader->mapName != ((void*)0) ) {
  _pico_free( shader->mapName );
 }

 shader->mapName = _pico_clone_alloc( mapName );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* mapName; struct TYPE_4__* name; } ;
typedef TYPE_1__ picoShader_t ;


 int _pico_free (TYPE_1__*) ;

void PicoFreeShader( picoShader_t *shader ){

 if ( shader == ((void*)0) ) {
  return;
 }


 if ( shader->name ) {
  _pico_free( shader->name );
 }
 if ( shader->mapName ) {
  _pico_free( shader->mapName );
 }


 _pico_free( shader );
}

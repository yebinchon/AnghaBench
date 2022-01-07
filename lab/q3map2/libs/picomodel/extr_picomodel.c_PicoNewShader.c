
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ shininess; scalar_t__ transparency; int specularColor; int diffuseColor; int ambientColor; TYPE_2__* model; } ;
typedef TYPE_1__ picoShader_t ;
struct TYPE_10__ {int numShaders; TYPE_1__** shader; } ;
typedef TYPE_2__ picoModel_t ;


 int PicoAdjustModel (TYPE_2__*,int,int ) ;
 TYPE_1__* _pico_alloc (int) ;
 int _pico_free (TYPE_1__*) ;
 int _pico_set_color (int ,int,int,int,int) ;
 int memset (TYPE_1__*,int ,int) ;

picoShader_t *PicoNewShader( picoModel_t *model ){
 picoShader_t *shader;


 shader = _pico_alloc( sizeof( picoShader_t ) );
 if ( shader == ((void*)0) ) {
  return ((void*)0);
 }
 memset( shader, 0, sizeof( picoShader_t ) );


 if ( model != ((void*)0) ) {

  if ( !PicoAdjustModel( model, model->numShaders + 1, 0 ) ) {
   _pico_free( shader );
   return ((void*)0);
  }

  model->shader[ model->numShaders - 1 ] = shader;
  shader->model = model;
 }

 _pico_set_color( shader->ambientColor, 0, 0, 0, 0 );
 _pico_set_color( shader->diffuseColor, 255, 255, 255, 1 );
 _pico_set_color( shader->specularColor, 0, 0, 0, 0 );


 shader->transparency = 0;
 shader->shininess = 0;


 return shader;
}

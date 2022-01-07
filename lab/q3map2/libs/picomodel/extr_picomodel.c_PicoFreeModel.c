
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numShaders; int numSurfaces; int * surface; int * shader; struct TYPE_4__* fileName; struct TYPE_4__* name; } ;
typedef TYPE_1__ picoModel_t ;


 int PicoFreeShader (int ) ;
 int PicoFreeSurface (int ) ;
 int _pico_free (TYPE_1__*) ;
 int free (int *) ;

void PicoFreeModel( picoModel_t *model ){
 int i;


 if ( model == ((void*)0) ) {
  return;
 }


 if ( model->name ) {
  _pico_free( model->name );
 }

 if ( model->fileName ) {
  _pico_free( model->fileName );
 }


 for ( i = 0; i < model->numShaders; i++ )
  PicoFreeShader( model->shader[ i ] );
 free( model->shader );


 for ( i = 0; i < model->numSurfaces; i++ )
  PicoFreeSurface( model->surface[ i ] );
 free( model->surface );


 _pico_free( model );
}

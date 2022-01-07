
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fileName; } ;
typedef TYPE_1__ picoModel_t ;


 int * _pico_clone_alloc (char*) ;
 int _pico_free (int *) ;

void PicoSetModelFileName( picoModel_t *model, char *fileName ){
 if ( model == ((void*)0) || fileName == ((void*)0) ) {
  return;
 }
 if ( model->fileName != ((void*)0) ) {
  _pico_free( model->fileName );
 }

 model->fileName = _pico_clone_alloc( fileName );
}

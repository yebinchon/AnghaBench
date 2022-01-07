
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ picoModel_t ;


 int * _pico_clone_alloc (char*) ;
 int _pico_free (int *) ;

void PicoSetModelName( picoModel_t *model, char *name ){
 if ( model == ((void*)0) || name == ((void*)0) ) {
  return;
 }
 if ( model->name != ((void*)0) ) {
  _pico_free( model->name );
 }

 model->name = _pico_clone_alloc( name );
}

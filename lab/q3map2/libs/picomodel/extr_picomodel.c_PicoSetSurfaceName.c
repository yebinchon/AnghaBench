
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ picoSurface_t ;


 int * _pico_clone_alloc (char*) ;
 int _pico_free (int *) ;

void PicoSetSurfaceName( picoSurface_t *surface, char *name ){
 if ( surface == ((void*)0) || name == ((void*)0) ) {
  return;
 }
 if ( surface->name != ((void*)0) ) {
  _pico_free( surface->name );
 }

 surface->name = _pico_clone_alloc( name );
}

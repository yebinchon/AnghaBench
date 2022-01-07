
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numSTArrays; int numColorArrays; struct TYPE_5__** color; struct TYPE_5__** st; struct TYPE_5__* name; struct TYPE_5__* faceNormal; struct TYPE_5__* index; struct TYPE_5__* smoothingGroup; struct TYPE_5__* normal; struct TYPE_5__* xyz; } ;
typedef TYPE_1__ picoSurface_t ;


 int _pico_free (TYPE_1__*) ;
 int free (TYPE_1__**) ;

void PicoFreeSurface( picoSurface_t *surface ){
 int i;


 if ( surface == ((void*)0) ) {
  return;
 }


 _pico_free( surface->xyz );
 _pico_free( surface->normal );
 _pico_free( surface->smoothingGroup );
 _pico_free( surface->index );
 _pico_free( surface->faceNormal );

 if ( surface->name ) {
  _pico_free( surface->name );
 }


 for ( i = 0; i < surface->numSTArrays; i++ )
  _pico_free( surface->st[ i ] );
 free( surface->st );
 for ( i = 0; i < surface->numColorArrays; i++ )
  _pico_free( surface->color[ i ] );
 free( surface->color );


 _pico_free( surface );
}

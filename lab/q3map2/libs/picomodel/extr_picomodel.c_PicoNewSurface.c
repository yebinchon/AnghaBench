
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* model; } ;
typedef TYPE_1__ picoSurface_t ;
struct TYPE_11__ {int numSurfaces; TYPE_1__** surface; } ;
typedef TYPE_2__ picoModel_t ;


 int PicoAdjustModel (TYPE_2__*,int ,int) ;
 int PicoSetSurfaceName (TYPE_1__*,char*) ;
 TYPE_1__* _pico_alloc (int) ;
 int _pico_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sprintf (char*,char*,int) ;

picoSurface_t *PicoNewSurface( picoModel_t *model ){
 picoSurface_t *surface;
 char surfaceName[64];


 surface = _pico_alloc( sizeof( *surface ) );
 if ( surface == ((void*)0) ) {
  return ((void*)0);
 }
 memset( surface, 0, sizeof( *surface ) );


 if ( model != ((void*)0) ) {

  if ( !PicoAdjustModel( model, 0, model->numSurfaces + 1 ) ) {
   _pico_free( surface );
   return ((void*)0);
  }


  model->surface[ model->numSurfaces - 1 ] = surface;
  surface->model = model;


  sprintf( surfaceName, "Unnamed_%d", model->numSurfaces );
  PicoSetSurfaceName( surface, surfaceName );
 }


 return surface;
}

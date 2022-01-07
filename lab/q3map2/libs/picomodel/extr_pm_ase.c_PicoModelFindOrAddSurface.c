
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* shader; } ;
typedef TYPE_1__ picoSurface_t ;
struct TYPE_14__ {int name; } ;
typedef TYPE_2__ picoShader_t ;
struct TYPE_15__ {int numSurfaces; TYPE_1__** surface; } ;
typedef TYPE_3__ picoModel_t ;


 int PICO_ERROR ;
 int PICO_TRIANGLES ;
 TYPE_1__* PicoNewSurface (TYPE_3__*) ;
 int PicoSetSurfaceName (TYPE_1__*,int ) ;
 int PicoSetSurfaceShader (TYPE_1__*,TYPE_2__*) ;
 int PicoSetSurfaceType (TYPE_1__*,int ) ;
 int _pico_printf (int ,char*) ;

picoSurface_t* PicoModelFindOrAddSurface( picoModel_t *model, picoShader_t* shader ){

 int i = 0;
 for ( ; i < model->numSurfaces ; i++ )
 {
  picoSurface_t* workSurface = model->surface[i];
  if ( workSurface->shader == shader ) {
   return workSurface;
  }
 }



 {

  picoSurface_t* workSurface = PicoNewSurface( model );
  if ( !workSurface ) {
   _pico_printf( PICO_ERROR, "Could not allocate a new surface!\n" );
   return 0;
  }


  PicoSetSurfaceType( workSurface, PICO_TRIANGLES );
  PicoSetSurfaceName( workSurface, shader->name );
  PicoSetSurfaceShader( workSurface, shader );

  return workSurface;
 }
}

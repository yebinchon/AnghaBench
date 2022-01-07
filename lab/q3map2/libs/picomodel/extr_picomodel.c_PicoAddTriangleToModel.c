
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int picoVec3_t ;
typedef int picoVec2_t ;
struct TYPE_21__ {TYPE_2__* shader; } ;
typedef TYPE_1__ picoSurface_t ;
struct TYPE_22__ {int name; } ;
typedef TYPE_2__ picoShader_t ;
struct TYPE_23__ {int numSurfaces; TYPE_1__** surface; } ;
typedef TYPE_3__ picoModel_t ;
typedef int picoIndex_t ;
typedef int picoColor_t ;


 int PICO_ERROR ;
 int PICO_TRIANGLES ;
 int PicoFindSurfaceVertexNum (TYPE_1__*,int ,int ,int,int *,int,int *,int ) ;
 int PicoGetSurfaceNumIndexes (TYPE_1__*) ;
 int PicoGetSurfaceNumVertexes (TYPE_1__*) ;
 TYPE_1__* PicoNewSurface (TYPE_3__*) ;
 int PicoSetSurfaceColor (TYPE_1__*,int,int,int ) ;
 int PicoSetSurfaceIndex (TYPE_1__*,int,int) ;
 int PicoSetSurfaceName (TYPE_1__*,int ) ;
 int PicoSetSurfaceNormal (TYPE_1__*,int,int ) ;
 int PicoSetSurfaceST (TYPE_1__*,int,int,int ) ;
 int PicoSetSurfaceShader (TYPE_1__*,TYPE_2__*) ;
 int PicoSetSurfaceSmoothingGroup (TYPE_1__*,int,int ) ;
 int PicoSetSurfaceType (TYPE_1__*,int ) ;
 int PicoSetSurfaceXYZ (TYPE_1__*,int,int ) ;
 int _pico_printf (int ,char*) ;

void PicoAddTriangleToModel( picoModel_t *model, picoVec3_t** xyz, picoVec3_t** normals,
        int numSTs, picoVec2_t **st, int numColors, picoColor_t **colors,
        picoShader_t* shader, picoIndex_t* smoothingGroup ){
 int i, j;
 int vertDataIndex;
 picoSurface_t* workSurface = ((void*)0);


 for ( i = 0 ; i < model->numSurfaces ; i++ )
 {
  workSurface = model->surface[i];
  if ( workSurface->shader == shader ) {
   break;
  }
 }


 if ( !workSurface || i >= model->numSurfaces ) {

  workSurface = PicoNewSurface( model );
  if ( !workSurface ) {
   _pico_printf( PICO_ERROR, "Could not allocate a new surface!\n" );
   return;
  }


  PicoSetSurfaceType( workSurface, PICO_TRIANGLES );
  PicoSetSurfaceName( workSurface, shader->name );
  PicoSetSurfaceShader( workSurface, shader );
 }


 for ( i = 0 ; i < 3 ; i++ )
 {

  int newVertIndex = PicoGetSurfaceNumIndexes( workSurface );


  vertDataIndex = PicoFindSurfaceVertexNum( workSurface, *xyz[i], *normals[i], numSTs, st[i], numColors, colors[i], smoothingGroup[i] );


  if ( vertDataIndex == -1 ) {

   vertDataIndex = PicoGetSurfaceNumVertexes( workSurface );


   PicoSetSurfaceXYZ( workSurface,vertDataIndex, *xyz[i] );
   PicoSetSurfaceNormal( workSurface, vertDataIndex, *normals[i] );


   for ( j = 0 ; j < numColors ; j++ )
   {
    PicoSetSurfaceColor( workSurface, j, vertDataIndex, colors[i][j] );
   }
   for ( j = 0 ; j < numSTs ; j++ )
   {
    PicoSetSurfaceST( workSurface, j, vertDataIndex, st[i][j] );
   }

   PicoSetSurfaceSmoothingGroup( workSurface, vertDataIndex, smoothingGroup[ i ] );
  }


  PicoSetSurfaceIndex( workSurface, newVertIndex, vertDataIndex );
 }
}

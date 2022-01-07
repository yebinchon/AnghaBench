
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tw ;
struct TYPE_9__ {int numVerts; TYPE_1__* v; int infoNum; } ;
typedef TYPE_2__ traceWinding_t ;
struct TYPE_10__ {int castShadows; int surfaceNum; TYPE_5__* si; } ;
typedef TYPE_3__ traceInfo_t ;
typedef int picoVec_t ;
typedef int picoSurface_t ;
typedef int picoShader_t ;
typedef int picoModel_t ;
typedef int picoIndex_t ;
typedef int * m4x4_t ;
struct TYPE_11__ {int compileFlags; } ;
struct TYPE_8__ {int xyz; int st; } ;


 int AddTraceInfo (TYPE_3__*) ;
 int C_ALPHASHADOW ;
 int C_LIGHTFILTER ;
 int C_NODRAW ;
 int C_TRANSLUCENT ;
 int FilterTraceWindingIntoNodes_r (TYPE_2__*,int ) ;
 scalar_t__ PICO_TRIANGLES ;
 int PicoGetModelNumSurfaces (int *) ;
 int * PicoGetModelSurface (int *,int) ;
 int PicoGetShaderName (int *) ;
 int * PicoGetSurfaceIndexes (int *,int ) ;
 int PicoGetSurfaceNumIndexes (int *) ;
 int * PicoGetSurfaceST (int *,int ,int ) ;
 int * PicoGetSurfaceShader (int *) ;
 scalar_t__ PicoGetSurfaceType (int *) ;
 int * PicoGetSurfaceXYZ (int *,int ) ;
 TYPE_5__* ShaderInfoForShader (int ) ;
 int Vector2Copy (int *,int ) ;
 int VectorCopy (int *,int ) ;
 int headNodeNum ;
 int m4x4_transform_point (int *,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void PopulateWithPicoModel( int castShadows, picoModel_t *model, m4x4_t transform ){
 int i, j, k, numSurfaces, numIndexes;
 picoSurface_t *surface;
 picoShader_t *shader;
 picoVec_t *xyz, *st;
 picoIndex_t *indexes;
 traceInfo_t ti;
 traceWinding_t tw;



 if ( model == ((void*)0) || transform == ((void*)0) ) {
  return;
 }


 numSurfaces = PicoGetModelNumSurfaces( model );


 for ( i = 0; i < numSurfaces; i++ )
 {

  surface = PicoGetModelSurface( model, i );
  if ( surface == ((void*)0) ) {
   continue;
  }


  if ( PicoGetSurfaceType( surface ) != PICO_TRIANGLES ) {
   continue;
  }


  shader = PicoGetSurfaceShader( surface );
  if ( shader == ((void*)0) ) {
   continue;
  }
  ti.si = ShaderInfoForShader( PicoGetShaderName( shader ) );
  if ( ti.si == ((void*)0) ) {
   continue;
  }


  if ( ( ti.si->compileFlags & C_NODRAW ) ) {
   continue;
  }
  if ( ( ti.si->compileFlags & C_TRANSLUCENT ) &&
    !( ti.si->compileFlags & C_ALPHASHADOW ) &&
    !( ti.si->compileFlags & C_LIGHTFILTER ) ) {
   continue;
  }


  ti.castShadows = castShadows;
  ti.surfaceNum = -1;


  memset( &tw, 0, sizeof( tw ) );
  tw.infoNum = AddTraceInfo( &ti );
  tw.numVerts = 3;


  numIndexes = PicoGetSurfaceNumIndexes( surface );
  indexes = PicoGetSurfaceIndexes( surface, 0 );


  for ( j = 0; j < numIndexes; j += 3, indexes += 3 )
  {
   for ( k = 0; k < 3; k++ )
   {
    xyz = PicoGetSurfaceXYZ( surface, indexes[ k ] );
    st = PicoGetSurfaceST( surface, 0, indexes[ k ] );
    VectorCopy( xyz, tw.v[ k ].xyz );
    Vector2Copy( st, tw.v[ k ].st );
    m4x4_transform_point( transform, tw.v[ k ].xyz );
   }
   FilterTraceWindingIntoNodes_r( &tw, headNodeNum );
  }
 }
}

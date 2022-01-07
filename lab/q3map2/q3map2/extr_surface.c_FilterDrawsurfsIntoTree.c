
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_32__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_36__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_37__ {scalar_t__ furNumLayers; int compileFlags; scalar_t__ noFog; int shader; scalar_t__* remapShader; scalar_t__* flareShader; int * foliage; int colorMod; int mod; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_39__ {scalar_t__ numVerts; int type; scalar_t__ skybox; TYPE_2__* shaderInfo; int fogNum; int maxs; int mins; TYPE_32__* verts; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_40__ {int firstDrawSurf; int origin; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_41__ {int numVerts; int numIndexes; } ;
typedef TYPE_5__ bspDrawSurface_t ;
struct TYPE_38__ {int st; } ;


 int AddReferenceToTree_r (TYPE_3__*,int ,scalar_t__) ;
 int AddSurfaceFlare (TYPE_3__*,int ) ;
 int BiasSurfaceTextures (TYPE_3__*) ;
 int C_NODRAW ;
 int ColorMod (int ,int,TYPE_32__*) ;
 int EmitFaceSurface (TYPE_3__*) ;
 int EmitFlareSurface (TYPE_3__*) ;
 int EmitPatchSurface (TYPE_3__*) ;
 int EmitTriangleSurface (TYPE_3__*) ;
 int FilterFaceIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FilterFlareSurfIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FilterFoliageIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FilterPatchIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FilterTrianglesIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FogForBounds (int ,int ,float) ;
 int Foliage (TYPE_3__*) ;
 int Fur (TYPE_3__*) ;
 int MakeSkyboxSurface (TYPE_3__*) ;
 int NUM_SURFACE_TYPES ;
 int SYS_VRB ;
 int SYS_WRN ;
 int SetSurfaceExtra (TYPE_3__*,int) ;
 TYPE_2__* ShaderInfoForShader (scalar_t__*) ;
 int Sys_FPrintf (int ,char*,...) ;
 int TCMod (int ,int ) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int VolumeColorMods (TYPE_4__*,TYPE_3__*) ;
 TYPE_5__* bspDrawSurfaces ;
 TYPE_4__* entities ;
 TYPE_3__* mapDrawSurfs ;
 int numBSPDrawSurfaces ;
 int numFanSurfaces ;
 int numMapDrawSurfs ;
 int numRedundantIndexes ;
 int numStripSurfaces ;
 int numSurfaceModels ;
 int* numSurfacesByType ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int* surfaceTypes ;

void FilterDrawsurfsIntoTree( entity_t *e, tree_t *tree ){
 int i, j;
 mapDrawSurface_t *ds;
 shaderInfo_t *si;
 vec3_t origin, mins, maxs;
 int refs;
 int numSurfs, numRefs, numSkyboxSurfaces;



 Sys_FPrintf( SYS_VRB, "--- FilterDrawsurfsIntoTree ---\n" );


 numSurfs = 0;
 numRefs = 0;
 numSkyboxSurfaces = 0;
 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
 {

  ds = &mapDrawSurfs[ i ];
  if ( ds->numVerts == 0 && ds->type != 135 && ds->type != 129 ) {
   continue;
  }


  si = ds->shaderInfo;


  if ( ds->skybox ) {
   refs = AddReferenceToTree_r( ds, tree->headnode, qtrue );
   ds->skybox = qfalse;
  }
  else
  {

   refs = 0;


   for ( j = 0; j < ds->numVerts; j++ )
    TCMod( si->mod, ds->verts[ j ].st );


   ColorMod( ds->shaderInfo->colorMod, ds->numVerts, ds->verts );


   VolumeColorMods( e, ds );


   if ( si->furNumLayers > 0 ) {
    Fur( ds );
   }


   if ( si->foliage != ((void*)0) ) {
    Foliage( ds );
   }


   if ( si->flareShader != ((void*)0) && si->flareShader[ 0 ] ) {
    AddSurfaceFlare( ds, e->origin );
   }


   if ( si != ((void*)0) && ( si->compileFlags & C_NODRAW ) && ds->type != 130 ) {
    continue;
   }


   BiasSurfaceTextures( ds );


   if ( e != entities && si->noFog == qfalse ) {

    VectorAdd( ds->mins, ds->maxs, origin );
    VectorScale( origin, 0.5f, origin );
    VectorAdd( origin, e->origin, origin );

    VectorAdd( ds->mins, e->origin, mins );
    VectorAdd( ds->maxs, e->origin, maxs );


    ds->fogNum = FogForBounds( mins, maxs, 1.0f );
   }
  }


  if ( ds->shaderInfo->remapShader && ds->shaderInfo->remapShader[ 0 ] ) {
   ds->shaderInfo = ShaderInfoForShader( ds->shaderInfo->remapShader );
  }


  switch ( ds->type )
  {

  case 136:
  case 137:
   if ( refs == 0 ) {
    refs = FilterFaceIntoTree( ds, tree );
   }
   if ( refs > 0 ) {
    EmitFaceSurface( ds );
   }
   break;


  case 130:
   if ( refs == 0 ) {
    refs = FilterPatchIntoTree( ds, tree );
   }
   if ( refs > 0 ) {
    EmitPatchSurface( ds );
   }
   break;


  case 128:
  case 132:
  case 131:

   if ( refs == 0 ) {
    refs = FilterTrianglesIntoTree( ds, tree );
   }
   if ( refs > 0 ) {
    EmitTriangleSurface( ds );
   }
   break;


  case 133:

   if ( refs == 0 ) {
    refs = FilterFoliageIntoTree( ds, tree );
   }
   if ( refs > 0 ) {
    EmitTriangleSurface( ds );
   }
   break;


  case 134:
   if ( refs == 0 ) {
    refs = AddReferenceToTree_r( ds, tree->headnode, qfalse );
   }
   if ( refs > 0 ) {
    EmitTriangleSurface( ds );
   }
   break;


  case 135:
   if ( refs == 0 ) {
    refs = FilterFlareSurfIntoTree( ds, tree );
   }
   if ( refs > 0 ) {
    EmitFlareSurface( ds );
   }
   break;


  case 129:
   refs = 1;
   EmitFlareSurface( ds );
   break;


  default:
   refs = 0;
   break;
  }


  if ( refs > 0 ) {

   numSurfs++;
   numRefs += refs;


   SetSurfaceExtra( ds, numBSPDrawSurfaces - 1 );



   {
    bspDrawSurface_t *out;
    out = &bspDrawSurfaces[ numBSPDrawSurfaces - 1 ];
    if ( out->numVerts == 3 && out->numIndexes > 3 ) {
     Sys_FPrintf( SYS_WRN, "WARNING: Potentially bad %s surface (%d: %d, %d)\n     %s\n",
        surfaceTypes[ ds->type ],
        numBSPDrawSurfaces - 1, out->numVerts, out->numIndexes, si->shader );
    }
   }


   if ( ds->skybox ) {
    MakeSkyboxSurface( ds );
    numSkyboxSurfaces++;
   }
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d references\n", numRefs );
 Sys_FPrintf( SYS_VRB, "%9d (%d) emitted drawsurfs\n", numSurfs, numBSPDrawSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d stripped face surfaces\n", numStripSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d fanned face surfaces\n", numFanSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d surface models generated\n", numSurfaceModels );
 Sys_FPrintf( SYS_VRB, "%9d skybox surfaces generated\n", numSkyboxSurfaces );
 for ( i = 0; i < NUM_SURFACE_TYPES; i++ )
  Sys_FPrintf( SYS_VRB, "%9d %s surfaces\n", numSurfacesByType[ i ], surfaceTypes[ i ] );

 Sys_FPrintf( SYS_VRB, "%9d redundant indexes supressed, saving %d Kbytes\n", numRedundantIndexes, ( numRedundantIndexes * 4 / 1024 ) );
}

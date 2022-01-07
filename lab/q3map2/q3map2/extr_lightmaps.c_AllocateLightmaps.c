
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int surfaceFlags; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_9__ {scalar_t__ numVerts; scalar_t__ type; int lightmapNum; struct TYPE_9__* nextOnShader; TYPE_1__* shaderInfo; int lightmapAxis; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_10__ {int firstDrawSurf; } ;
typedef TYPE_3__ entity_t ;


 int AllocateLightmapForSurface (TYPE_2__*) ;
 int Error (char*) ;
 int LIGHTMAP_HEIGHT ;
 int LIGHTMAP_WIDTH ;
 int MAX_MAP_SHADERS ;
 scalar_t__ SURF_FACE ;
 scalar_t__ SURF_META ;
 int SURF_NOLIGHTMAP ;
 scalar_t__ SURF_PATCH ;
 int SURF_POINTLIGHT ;
 scalar_t__ SURF_TERRAIN ;
 int SURF_VERTEXLIT ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 scalar_t__ VectorLength (int ) ;
 int c_exactLightmap ;
 int c_nonplanarLightmap ;
 int c_planarPatch ;
 TYPE_2__* mapDrawSurfs ;
 int numLightmaps ;
 int numMapDrawSurfs ;
 int numSortShaders ;
 TYPE_2__** surfsOnShader ;

void AllocateLightmaps( entity_t *e ){
 int i, j;
 mapDrawSurface_t *ds;
 shaderInfo_t *si;



 Sys_FPrintf( SYS_VRB,"--- AllocateLightmaps ---\n" );




 numSortShaders = 0;
 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
 {

  ds = &mapDrawSurfs[ i ];
  si = ds->shaderInfo;
  if ( si->surfaceFlags & SURF_VERTEXLIT ) {
   continue;
  }
  if ( ds->numVerts <= 0 ) {
   continue;
  }


  if ( ds->type != SURF_FACE && ds->type != SURF_PATCH ) {
   continue;
  }





  for ( j = 0 ; j < numSortShaders; j++ )
  {
   if ( ds->shaderInfo == surfsOnShader[ j ]->shaderInfo ) {
    ds->nextOnShader = surfsOnShader[ j ];
    surfsOnShader[ j ] = ds;
    break;
   }
  }


  if ( j == numSortShaders ) {
   if ( numSortShaders >= MAX_MAP_SHADERS ) {
    Error( "MAX_MAP_SHADERS" );
   }
   surfsOnShader[ j ] = ds;
   ds->nextOnShader = ((void*)0);
   numSortShaders++;
  }
 }


 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
 {

  ds = &mapDrawSurfs[ i ];
  si = ds->shaderInfo;
  if ( si->surfaceFlags & SURF_VERTEXLIT ) {
   continue;
  }
  if ( ds->numVerts <= 0 ) {
   continue;
  }


  if ( ds->type != SURF_TERRAIN && ds->type != SURF_META ) {
   continue;
  }


  if ( VectorLength( ds->lightmapAxis ) <= 0 ) {
   continue;
  }


  for ( j = 0; j < numSortShaders; j++ )
  {
   if ( ds->shaderInfo == surfsOnShader[ j ]->shaderInfo ) {
    ds->nextOnShader = surfsOnShader[ j ];
    surfsOnShader[ j ] = ds;
    break;
   }
  }


  if ( j == numSortShaders ) {
   if ( numSortShaders >= MAX_MAP_SHADERS ) {
    Error( "MAX_MAP_SHADERS" );
   }
   surfsOnShader[ j ] = ds;
   ds->nextOnShader = ((void*)0);
   numSortShaders++;
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d unique shaders\n", numSortShaders );


 for ( i = 0; i < numSortShaders; i++ )
 {
  si = surfsOnShader[ i ]->shaderInfo;
  for ( ds = surfsOnShader[ i ]; ds; ds = ds->nextOnShader )
  {

   if ( si->surfaceFlags & SURF_POINTLIGHT ) {
    ds->lightmapNum = -3;
   }
   else if ( si->surfaceFlags & SURF_NOLIGHTMAP ) {
    ds->lightmapNum = -1;
   }
   else{
    AllocateLightmapForSurface( ds );
   }
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d exact lightmap texels\n", c_exactLightmap );
 Sys_FPrintf( SYS_VRB, "%9d block lightmap texels\n", numLightmaps * LIGHTMAP_WIDTH * LIGHTMAP_HEIGHT );
 Sys_FPrintf( SYS_VRB, "%9d non-planar or terrain lightmap texels\n", c_nonplanarLightmap );
 Sys_FPrintf( SYS_VRB, "%9d planar patch lightmaps\n", c_planarPatch );
 Sys_FPrintf( SYS_VRB, "%9d lightmap textures, size: %d Kbytes\n", numLightmaps, ( numLightmaps * LIGHTMAP_WIDTH * LIGHTMAP_HEIGHT * 3 ) / 1024 );
}

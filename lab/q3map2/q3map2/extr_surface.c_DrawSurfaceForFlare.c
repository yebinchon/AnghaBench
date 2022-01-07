
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_5__ {int entityNum; int lightStyle; int * lightmapVecs; int lightmapOrigin; void* shaderInfo; } ;
typedef TYPE_1__ mapDrawSurface_t ;
struct TYPE_6__ {char* flareShader; } ;


 TYPE_1__* AllocDrawSurface (int ) ;
 int LS_NONE ;
 int LS_NORMAL ;
 int SURFACE_FLARE ;
 void* ShaderInfoForShader (char*) ;
 int VectorCopy (int *,int ) ;
 scalar_t__ emitFlares ;
 TYPE_2__* game ;
 scalar_t__ qfalse ;

mapDrawSurface_t *DrawSurfaceForFlare( int entNum, vec3_t origin, vec3_t normal, vec3_t color, char *flareShader, int lightStyle ){
 mapDrawSurface_t *ds;



 if ( emitFlares == qfalse ) {
  return ((void*)0);
 }


 ds = AllocDrawSurface( SURFACE_FLARE );
 ds->entityNum = entNum;


 if ( flareShader != ((void*)0) && flareShader[ 0 ] != '\0' ) {
  ds->shaderInfo = ShaderInfoForShader( flareShader );
 }
 else{
  ds->shaderInfo = ShaderInfoForShader( game->flareShader );
 }
 if ( origin != ((void*)0) ) {
  VectorCopy( origin, ds->lightmapOrigin );
 }
 if ( normal != ((void*)0) ) {
  VectorCopy( normal, ds->lightmapVecs[ 2 ] );
 }
 if ( color != ((void*)0) ) {
  VectorCopy( color, ds->lightmapVecs[ 0 ] );
 }


 ds->lightStyle = lightStyle;
 if ( ds->lightStyle < 0 || ds->lightStyle >= LS_NONE ) {
  ds->lightStyle = LS_NORMAL;
 }




 return ds;
}

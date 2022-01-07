
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* si; int * lm; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_10__ {float bounceScale; int compileFlags; float lightSubdivide; scalar_t__ autosprite; } ;
typedef TYPE_2__ shaderInfo_t ;
typedef int rawLightmap_t ;
typedef int clipWork_t ;
struct TYPE_11__ {size_t shaderNum; scalar_t__* lightmapStyles; int surfaceType; } ;
typedef TYPE_3__ bspDrawSurface_t ;
struct TYPE_12__ {int contentFlags; int surfaceFlags; } ;


 int ApplySurfaceParm (char*,int*,int*,int*) ;
 int C_SKY ;
 scalar_t__ LS_NONE ;
 scalar_t__ LS_UNUSED ;
 int MAX_LIGHTMAPS ;



 int RadLightForPatch (int,int,int *,TYPE_2__*,float,float,int *) ;
 int RadLightForTriangles (int,int,int *,TYPE_2__*,float,float,int *) ;
 TYPE_3__* bspDrawSurfaces ;
 TYPE_5__* bspShaders ;
 float diffuseSubdivide ;
 int master_mutex ;
 int numDiffuseSurfaces ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* surfaceInfos ;

void RadLight( int num ){
 int lightmapNum;
 float scale, subdivide;
 int contentFlags, surfaceFlags, compileFlags;
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;
 rawLightmap_t *lm;
 shaderInfo_t *si;
 clipWork_t cw;



 ds = &bspDrawSurfaces[ num ];
 info = &surfaceInfos[ num ];
 lm = info->lm;
 si = info->si;
 scale = si->bounceScale;


 contentFlags = surfaceFlags = compileFlags = 0;
 ApplySurfaceParm( "nodraw", &contentFlags, &surfaceFlags, &compileFlags );


 if ( scale <= 0.0f || ( si->compileFlags & C_SKY ) || si->autosprite ||
   ( bspShaders[ ds->shaderNum ].contentFlags & contentFlags ) || ( bspShaders[ ds->shaderNum ].surfaceFlags & surfaceFlags ) ||
   ( si->compileFlags & compileFlags ) ) {
  return;
 }


 if ( si->lightSubdivide ) {
  subdivide = si->lightSubdivide;
 }
 else{
  subdivide = diffuseSubdivide;
 }


 pthread_mutex_lock( &master_mutex );
 numDiffuseSurfaces++;
 pthread_mutex_unlock( &master_mutex );


 for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
 {

  if ( ds->lightmapStyles[ lightmapNum ] != LS_NONE && ds->lightmapStyles[ lightmapNum ] != LS_UNUSED ) {
   switch ( ds->surfaceType )
   {
   case 129:
   case 128:
    RadLightForTriangles( num, lightmapNum, lm, si, scale, subdivide, &cw );
    break;

   case 130:
    RadLightForPatch( num, lightmapNum, lm, si, scale, subdivide, &cw );
    break;

   default:
    break;
   }
  }
 }
}

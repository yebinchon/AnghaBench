
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_12__ {int lm; int maxs; int mins; TYPE_2__* si; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_13__ {float skyLightValue; int value; float lightSubdivide; int lightStyle; int color; scalar_t__ autosprite; int lightFilterRadius; int skyLightIterations; int shader; int * sun; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_14__ {int photons; float fade; int style; int falloffTolerance; int color; int origin; TYPE_2__* si; int type; int flags; struct TYPE_14__* next; } ;
typedef TYPE_3__ light_t ;
typedef int clipWork_t ;
struct TYPE_15__ {int surfaceType; } ;
typedef TYPE_4__ bspDrawSurface_t ;


 int APPROX_BOUNCE ;
 int CreateSkyLights (int ,float,int ,int ,int ) ;
 int CreateSunLight (int *) ;
 int EMIT_POINT ;
 int LIGHT_Q3A_DEFAULT ;



 int RadLightForPatch (int,int ,int ,TYPE_2__*,int ,float,int *) ;
 int RadLightForTriangles (int,int ,int ,TYPE_2__*,int ,float,int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,int ) ;
 char* ValueForKey (int *,char*) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 TYPE_4__* bspDrawSurfaces ;
 float defaultLightSubdivide ;
 int * entities ;
 int falloffTolerance ;
 TYPE_3__* lights ;
 int memset (TYPE_3__*,int ,int) ;
 int numBSPDrawSurfaces ;
 int numPointLights ;
 int pointScale ;
 TYPE_3__* safe_malloc (int) ;
 TYPE_1__* surfaceInfos ;

void CreateSurfaceLights( void ){
 int i;
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;
 shaderInfo_t *si;
 light_t *light;
 float subdivide;
 vec3_t origin;
 clipWork_t cw;
 const char *nss;



 nss = ValueForKey( &entities[ 0 ], "_noshadersun" );


 for ( i = 0; i < numBSPDrawSurfaces; i++ )
 {

  ds = &bspDrawSurfaces[ i ];
  info = &surfaceInfos[ i ];
  si = info->si;


  if ( si->sun != ((void*)0) && nss[ 0 ] != '1' ) {
   Sys_FPrintf( SYS_VRB, "Sun: %s\n", si->shader );
   CreateSunLight( si->sun );
   si->sun = ((void*)0);
  }


  if ( si->skyLightValue > 0.0f ) {
   Sys_FPrintf( SYS_VRB, "Sky: %s\n", si->shader );
   CreateSkyLights( si->color, si->skyLightValue, si->skyLightIterations, si->lightFilterRadius, si->lightStyle );
   si->skyLightValue = 0.0f;
  }


  if ( si->value <= 0 ) {
   continue;
  }


  if ( si->autosprite ) {

   VectorAdd( info->mins, info->maxs, origin );
   VectorScale( origin, 0.5f, origin );


   light = safe_malloc( sizeof( *light ) );
   memset( light, 0, sizeof( *light ) );
   light->next = lights;
   lights = light;


   light->flags = LIGHT_Q3A_DEFAULT;
   light->type = EMIT_POINT;
   light->photons = si->value * pointScale;
   light->fade = 1.0f;
   light->si = si;
   VectorCopy( origin, light->origin );
   VectorCopy( si->color, light->color );
   light->falloffTolerance = falloffTolerance;
   light->style = si->lightStyle;


   numPointLights++;
   continue;
  }


  if ( si->lightSubdivide > 0 ) {
   subdivide = si->lightSubdivide;
  }
  else{
   subdivide = defaultLightSubdivide;
  }


  switch ( ds->surfaceType )
  {
  case 129:
  case 128:
   RadLightForTriangles( i, 0, info->lm, si, APPROX_BOUNCE, subdivide, &cw );
   break;

  case 130:
   RadLightForPatch( i, 0, info->lm, si, APPROX_BOUNCE, subdivide, &cw );
   break;

  default:
   break;
  }
 }
}

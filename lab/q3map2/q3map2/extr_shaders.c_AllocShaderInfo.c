
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float shadeAngleDegrees; double vertexScale; void* lmCustomHeight; void* lmCustomWidth; int mod; void* notjunc; void* forceSunlight; int vertexShadows; void* patchShadows; int lightmapSampleOffset; scalar_t__ lightmapSampleSize; void* polygonOffset; int lightStyle; int bounceScale; int backsplashDistance; int backsplashFraction; int compileFlags; int surfaceFlags; int contentFlags; } ;
typedef TYPE_1__ shaderInfo_t ;


 int ApplySurfaceParm (char*,int *,int *,int *) ;
 int DEFAULT_LIGHTMAP_SAMPLE_OFFSET ;
 int DEF_BACKSPLASH_DISTANCE ;
 int DEF_BACKSPLASH_FRACTION ;
 int DEF_RADIOSITY_BOUNCE ;
 int Error (char*) ;
 int LS_NORMAL ;
 int MAX_SHADER_INFO ;
 int TCModIdentity (int ) ;
 void* lmCustomSize ;
 int memset (TYPE_1__*,int ,int) ;
 int numShaderInfo ;
 void* qfalse ;
 int qtrue ;
 TYPE_1__* safe_malloc (int) ;
 TYPE_1__* shaderInfo ;

__attribute__((used)) static shaderInfo_t *AllocShaderInfo( void ){
 shaderInfo_t *si;



 if ( shaderInfo == ((void*)0) ) {
  shaderInfo = safe_malloc( sizeof( shaderInfo_t ) * MAX_SHADER_INFO );
  numShaderInfo = 0;
 }


 if ( numShaderInfo == MAX_SHADER_INFO ) {
  Error( "MAX_SHADER_INFO exceeded. Remove some PK3 files or shader scripts from shaderlist.txt and try again." );
 }
 si = &shaderInfo[ numShaderInfo ];
 numShaderInfo++;


 memset( si, 0, sizeof( shaderInfo_t ) );


 ApplySurfaceParm( "default", &si->contentFlags, &si->surfaceFlags, &si->compileFlags );

 si->backsplashFraction = DEF_BACKSPLASH_FRACTION;
 si->backsplashDistance = DEF_BACKSPLASH_DISTANCE;

 si->bounceScale = DEF_RADIOSITY_BOUNCE;

 si->lightStyle = LS_NORMAL;

 si->polygonOffset = qfalse;

 si->shadeAngleDegrees = 0.0f;
 si->lightmapSampleSize = 0;
 si->lightmapSampleOffset = DEFAULT_LIGHTMAP_SAMPLE_OFFSET;
 si->patchShadows = qfalse;
 si->vertexShadows = qtrue;
 si->forceSunlight = qfalse;
 si->vertexScale = 1.0;
 si->notjunc = qfalse;


 TCModIdentity( si->mod );


 si->lmCustomWidth = lmCustomSize;
 si->lmCustomHeight = lmCustomSize;


 return si;
}

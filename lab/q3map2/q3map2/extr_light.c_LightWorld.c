
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef scalar_t__ qboolean ;


 int CreateEntityLights () ;
 int CreateSurfaceLights () ;
 int DirtyRawLightmap ;
 float FloatForKey (int *,char*) ;
 int GetVectorForKey (int *,char*,int ) ;
 int IlluminateRawLightmap ;
 int IlluminateVertexes ;
 int MapRawLightmap ;
 int RadCreateDiffuseLights () ;
 int RadFreeLights () ;
 int RunThreadsOnIndividual (int ,scalar_t__,int ) ;
 int SYS_VRB ;
 int SetupEnvelopes (scalar_t__,int ) ;
 int SetupGrid () ;
 int SmoothNormals () ;
 int StitchSurfaceLightmaps () ;
 int StoreSurfaceLightmaps () ;
 int Sys_FPrintf (int ,char*,...) ;
 int Sys_Printf (char*,...) ;
 int TraceGrid ;
 char* ValueForKey (int *,char*) ;
 int VectorClear (int ) ;
 float VectorLength (int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSet (int ,double,double,double) ;
 int WriteBSPFile (int ) ;
 int ambientColor ;
 float atof (char const*) ;
 int bounce ;
 scalar_t__ bouncegrid ;
 scalar_t__ bouncing ;
 scalar_t__ dirty ;
 int * entities ;
 int fast ;
 int fastbounce ;
 int fastgrid ;
 int * gridBounds ;
 scalar_t__ gridBoundsCulled ;
 scalar_t__ gridEnvelopeCulled ;
 scalar_t__ lightsBoundsCulled ;
 scalar_t__ lightsClusterCulled ;
 scalar_t__ lightsEnvelopeCulled ;
 scalar_t__ lightsPlaneCulled ;
 int minGridLight ;
 int minLight ;
 int minVertexLight ;
 int noGridLighting ;
 int numBSPDrawSurfaces ;
 int numBSPGridPoints ;
 int numDiffuseLights ;
 scalar_t__ numLights ;
 int numLuxels ;
 int numLuxelsIlluminated ;
 int numLuxelsMapped ;
 int numLuxelsOccluded ;
 int numPointLights ;
 int numRawGridPoints ;
 int numRawLightmaps ;
 int numSpotLights ;
 int numSunLights ;
 int numVertsIlluminated ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 scalar_t__ shade ;
 int source ;
 int subdivideThreshold ;

void LightWorld( void ){
 vec3_t color;
 float f;
 int b, bt;
 qboolean minVertex, minGrid;
 const char *value;



 if ( shade ) {
  Sys_Printf( "--- SmoothNormals ---\n" );
  SmoothNormals();
 }


 Sys_Printf( "--- SetupGrid ---\n" );
 SetupGrid();


 GetVectorForKey( &entities[ 0 ], "_color", color );
 if ( VectorLength( color ) == 0.0f ) {
  VectorSet( color, 1.0, 1.0, 1.0 );
 }


 f = FloatForKey( &entities[ 0 ], "_ambient" );
 if ( f == 0.0f ) {
  f = FloatForKey( &entities[ 0 ], "ambient" );
 }
 VectorScale( color, f, ambientColor );


 minVertex = qfalse;
 value = ValueForKey( &entities[ 0 ], "_minvertexlight" );
 if ( value[ 0 ] != '\0' ) {
  minVertex = qtrue;
  f = atof( value );
  VectorScale( color, f, minVertexLight );
 }


 minGrid = qfalse;
 value = ValueForKey( &entities[ 0 ], "_mingridlight" );
 if ( value[ 0 ] != '\0' ) {
  minGrid = qtrue;
  f = atof( value );
  VectorScale( color, f, minGridLight );
 }


 value = ValueForKey( &entities[ 0 ], "_minlight" );
 if ( value[ 0 ] != '\0' ) {
  f = atof( value );
  VectorScale( color, f, minLight );
  if ( minVertex == qfalse ) {
   VectorScale( color, f, minVertexLight );
  }
  if ( minGrid == qfalse ) {
   VectorScale( color, f, minGridLight );
  }
 }


 Sys_FPrintf( SYS_VRB, "--- CreateLights ---\n" );
 CreateEntityLights();
 CreateSurfaceLights();
 Sys_Printf( "%9d point lights\n", numPointLights );
 Sys_Printf( "%9d spotlights\n", numSpotLights );
 Sys_Printf( "%9d diffuse (area) lights\n", numDiffuseLights );
 Sys_Printf( "%9d sun/sky lights\n", numSunLights );


 if ( !noGridLighting ) {

  SetupEnvelopes( qtrue, fastgrid );

  Sys_Printf( "--- TraceGrid ---\n" );
  RunThreadsOnIndividual( numRawGridPoints, qtrue, TraceGrid );
  Sys_Printf( "%d x %d x %d = %d grid\n",
     gridBounds[ 0 ], gridBounds[ 1 ], gridBounds[ 2 ], numBSPGridPoints );


  Sys_FPrintf( SYS_VRB, "%9d grid points envelope culled\n", gridEnvelopeCulled );
  Sys_FPrintf( SYS_VRB, "%9d grid points bounds culled\n", gridBoundsCulled );
 }


 subdivideThreshold *= subdivideThreshold;


 Sys_Printf( "--- MapRawLightmap ---\n" );
 RunThreadsOnIndividual( numRawLightmaps, qtrue, MapRawLightmap );
 Sys_Printf( "%9d luxels\n", numLuxels );
 Sys_Printf( "%9d luxels mapped\n", numLuxelsMapped );
 Sys_Printf( "%9d luxels occluded\n", numLuxelsOccluded );


 if ( dirty ) {
  Sys_Printf( "--- DirtyRawLightmap ---\n" );




  RunThreadsOnIndividual( numRawLightmaps, qtrue, DirtyRawLightmap );
 }



 SetupEnvelopes( qfalse, fast );


 lightsPlaneCulled = 0;
 lightsEnvelopeCulled = 0;
 lightsBoundsCulled = 0;
 lightsClusterCulled = 0;

 Sys_Printf( "--- IlluminateRawLightmap ---\n" );
 RunThreadsOnIndividual( numRawLightmaps, qtrue, IlluminateRawLightmap );
 Sys_Printf( "%9d luxels illuminated\n", numLuxelsIlluminated );

 StitchSurfaceLightmaps();

 Sys_Printf( "--- IlluminateVertexes ---\n" );
 RunThreadsOnIndividual( numBSPDrawSurfaces, qtrue, IlluminateVertexes );
 Sys_Printf( "%9d vertexes illuminated\n", numVertsIlluminated );


 Sys_FPrintf( SYS_VRB, "%9d lights plane culled\n", lightsPlaneCulled );
 Sys_FPrintf( SYS_VRB, "%9d lights envelope culled\n", lightsEnvelopeCulled );
 Sys_FPrintf( SYS_VRB, "%9d lights bounds culled\n", lightsBoundsCulled );
 Sys_FPrintf( SYS_VRB, "%9d lights cluster culled\n", lightsClusterCulled );


 b = 1;
 bt = bounce;
 while ( bounce > 0 )
 {

  StoreSurfaceLightmaps();
  Sys_Printf( "Writing %s\n", source );
  WriteBSPFile( source );


  Sys_Printf( "\n--- Radiosity (bounce %d of %d) ---\n", b, bt );


  bouncing = qtrue;
  VectorClear( ambientColor );


  RadFreeLights();
  RadCreateDiffuseLights();


  SetupEnvelopes( qfalse, fastbounce );
  if ( numLights == 0 ) {
   Sys_Printf( "No diffuse light to calculate, ending radiosity.\n" );
   return;
  }


  if ( bouncegrid ) {
   gridEnvelopeCulled = 0;
   gridBoundsCulled = 0;

   Sys_Printf( "--- BounceGrid ---\n" );
   RunThreadsOnIndividual( numRawGridPoints, qtrue, TraceGrid );
   Sys_FPrintf( SYS_VRB, "%9d grid points envelope culled\n", gridEnvelopeCulled );
   Sys_FPrintf( SYS_VRB, "%9d grid points bounds culled\n", gridBoundsCulled );
  }


  lightsPlaneCulled = 0;
  lightsEnvelopeCulled = 0;
  lightsBoundsCulled = 0;
  lightsClusterCulled = 0;

  Sys_Printf( "--- IlluminateRawLightmap ---\n" );
  RunThreadsOnIndividual( numRawLightmaps, qtrue, IlluminateRawLightmap );
  Sys_Printf( "%9d luxels illuminated\n", numLuxelsIlluminated );
  Sys_Printf( "%9d vertexes illuminated\n", numVertsIlluminated );

  StitchSurfaceLightmaps();

  Sys_Printf( "--- IlluminateVertexes ---\n" );
  RunThreadsOnIndividual( numBSPDrawSurfaces, qtrue, IlluminateVertexes );
  Sys_Printf( "%9d vertexes illuminated\n", numVertsIlluminated );


  Sys_FPrintf( SYS_VRB, "%9d lights plane culled\n", lightsPlaneCulled );
  Sys_FPrintf( SYS_VRB, "%9d lights envelope culled\n", lightsEnvelopeCulled );
  Sys_FPrintf( SYS_VRB, "%9d lights bounds culled\n", lightsBoundsCulled );
  Sys_FPrintf( SYS_VRB, "%9d lights cluster culled\n", lightsClusterCulled );


  bounce--;
  b++;
 }

 StoreSurfaceLightmaps();

}

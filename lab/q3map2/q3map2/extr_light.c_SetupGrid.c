
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_8__ {float* mins; float* maxs; } ;
struct TYPE_7__ {float** ambient; void** styles; } ;


 void* LS_NONE ;
 void* LS_NORMAL ;
 int MAX_LIGHTMAPS ;
 int MAX_MAP_LIGHTGRID ;
 int SYS_VRB ;
 int SetKeyValue (int *,char*,char const*) ;
 int Sys_FPrintf (int ,char*) ;
 int Sys_Printf (char*,int,...) ;
 char* ValueForKey (int *,char*) ;
 int VectorCompare (float*,float*) ;
 int VectorCopy (float*,float*) ;
 float* ambientColor ;
 TYPE_1__* bspGridPoints ;
 TYPE_5__* bspModels ;
 float ceil (float) ;
 int * entities ;
 float floor (float) ;
 int free (TYPE_1__*) ;
 int* gridBounds ;
 float* gridMins ;
 float* gridSize ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ noGridLighting ;
 int numBSPGridPoints ;
 int numRawGridPoints ;
 TYPE_1__* rawGridPoints ;
 TYPE_1__* safe_malloc (int) ;
 int sprintf (char*,char*,float,float,float) ;
 int sscanf (char const*,char*,float*,float*,float*) ;

void SetupGrid( void ){
 int i, j;
 vec3_t maxs, oldGridSize;
 const char *value;
 char temp[ 64 ];



 if ( noGridLighting ) {
  return;
 }


 value = ValueForKey( &entities[ 0 ], "gridsize" );
 if ( value[ 0 ] != '\0' ) {
  sscanf( value, "%f %f %f", &gridSize[ 0 ], &gridSize[ 1 ], &gridSize[ 2 ] );
 }


 VectorCopy( gridSize, oldGridSize );
 for ( i = 0; i < 3; i++ )
  gridSize[ i ] = gridSize[ i ] >= 8.0f ? floor( gridSize[ i ] ) : 8.0f;


 numRawGridPoints = MAX_MAP_LIGHTGRID + 1;
 j = 0;
 while ( numRawGridPoints > MAX_MAP_LIGHTGRID )
 {

  for ( i = 0; i < 3; i++ )
  {
   gridMins[ i ] = gridSize[ i ] * ceil( bspModels[ 0 ].mins[ i ] / gridSize[ i ] );
   maxs[ i ] = gridSize[ i ] * floor( bspModels[ 0 ].maxs[ i ] / gridSize[ i ] );
   gridBounds[ i ] = ( maxs[ i ] - gridMins[ i ] ) / gridSize[ i ] + 1;
  }


  numRawGridPoints = gridBounds[ 0 ] * gridBounds[ 1 ] * gridBounds[ 2 ];


  if ( numRawGridPoints > MAX_MAP_LIGHTGRID ) {
   gridSize[ j++ % 3 ] += 16.0f;
  }
 }


 Sys_Printf( "Grid size = { %1.0f, %1.0f, %1.0f }\n", gridSize[ 0 ], gridSize[ 1 ], gridSize[ 2 ] );


 if ( !VectorCompare( gridSize, oldGridSize ) ) {
  sprintf( temp, "%.0f %.0f %.0f", gridSize[ 0 ], gridSize[ 1 ], gridSize[ 2 ] );
  SetKeyValue( &entities[ 0 ], "gridsize", (const char*) temp );
  Sys_FPrintf( SYS_VRB, "Storing adjusted grid size\n" );
 }


 numBSPGridPoints = numRawGridPoints;


 rawGridPoints = safe_malloc( numRawGridPoints * sizeof( *rawGridPoints ) );
 memset( rawGridPoints, 0, numRawGridPoints * sizeof( *rawGridPoints ) );

 if ( bspGridPoints != ((void*)0) ) {
  free( bspGridPoints );
 }
 bspGridPoints = safe_malloc( numBSPGridPoints * sizeof( *bspGridPoints ) );
 memset( bspGridPoints, 0, numBSPGridPoints * sizeof( *bspGridPoints ) );


 for ( i = 0; i < numRawGridPoints; i++ )
 {
  VectorCopy( ambientColor, rawGridPoints[ i ].ambient[ j ] );
  rawGridPoints[ i ].styles[ 0 ] = LS_NORMAL;
  bspGridPoints[ i ].styles[ 0 ] = LS_NORMAL;
  for ( j = 1; j < MAX_LIGHTMAPS; j++ )
  {
   rawGridPoints[ i ].styles[ j ] = LS_NONE;
   bspGridPoints[ i ].styles[ j ] = LS_NONE;
  }
 }


 Sys_Printf( "%9d grid points\n", numRawGridPoints );
}

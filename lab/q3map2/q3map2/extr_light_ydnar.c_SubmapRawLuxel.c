
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {int sw; int sh; int lightClusters; int numLightClusters; } ;
typedef TYPE_1__ rawLightmap_t ;
typedef int qboolean ;


 int ClusterForPointExtFilter (float*,int,int ,int ) ;
 int LUXEL_EPSILON ;
 int* SUPER_CLUSTER (int,int) ;
 float* SUPER_NORMAL (int,int) ;
 float* SUPER_ORIGIN (int,int) ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean SubmapRawLuxel( rawLightmap_t *lm, int x, int y, float bx, float by, int *sampleCluster, vec3_t sampleOrigin, vec3_t sampleNormal ){
 int i, *cluster, *cluster2;
 float *origin, *origin2, *normal;
 vec3_t originVecs[ 2 ];


 if ( ( x < ( lm->sw - 1 ) && bx >= 0.0f ) || ( x == 0 && bx <= 0.0f ) ) {
  cluster = SUPER_CLUSTER( x, y );
  origin = SUPER_ORIGIN( x, y );
  cluster2 = SUPER_CLUSTER( x + 1, y );
  origin2 = *cluster2 < 0 ? SUPER_ORIGIN( x, y ) : SUPER_ORIGIN( x + 1, y );
 }
 else if ( ( x > 0 && bx <= 0.0f ) || ( x == ( lm->sw - 1 ) && bx >= 0.0f ) ) {
  cluster = SUPER_CLUSTER( x - 1, y );
  origin = *cluster < 0 ? SUPER_ORIGIN( x, y ) : SUPER_ORIGIN( x - 1, y );
  cluster2 = SUPER_CLUSTER( x, y );
  origin2 = SUPER_ORIGIN( x, y );
 }
 else{
  Sys_FPrintf( SYS_WRN, "WARNING: Spurious lightmap S vector\n" );
  VectorClear( originVecs[0] );
  origin = originVecs[0];
  origin2 = originVecs[0];
 }

 VectorSubtract( origin2, origin, originVecs[ 0 ] );


 if ( ( y < ( lm->sh - 1 ) && bx >= 0.0f ) || ( y == 0 && bx <= 0.0f ) ) {
  cluster = SUPER_CLUSTER( x, y );
  origin = SUPER_ORIGIN( x, y );
  cluster2 = SUPER_CLUSTER( x, y + 1 );
  origin2 = *cluster2 < 0 ? SUPER_ORIGIN( x, y ) : SUPER_ORIGIN( x, y + 1 );
 }
 else if ( ( y > 0 && bx <= 0.0f ) || ( y == ( lm->sh - 1 ) && bx >= 0.0f ) ) {
  cluster = SUPER_CLUSTER( x, y - 1 );
  origin = *cluster < 0 ? SUPER_ORIGIN( x, y ) : SUPER_ORIGIN( x, y - 1 );
  cluster2 = SUPER_CLUSTER( x, y );
  origin2 = SUPER_ORIGIN( x, y );
 }
 else{
  Sys_FPrintf( SYS_WRN, "WARNING: Spurious lightmap T vector\n" );
  VectorClear( originVecs[1] );
  origin = originVecs[1];
  origin2 = originVecs[1];
 }

 VectorSubtract( origin2, origin, originVecs[ 1 ] );


 for ( i = 0; i < 3; i++ )
  sampleOrigin[ i ] = sampleOrigin[ i ] + ( bx * originVecs[ 0 ][ i ] ) + ( by * originVecs[ 1 ][ i ] );


 *sampleCluster = ClusterForPointExtFilter( sampleOrigin, ( LUXEL_EPSILON * 2 ), lm->numLightClusters, lm->lightClusters );
 if ( *sampleCluster < 0 ) {
  return qfalse;
 }


 normal = SUPER_NORMAL( x, y );
 VectorCopy( normal, sampleNormal );


 return qtrue;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* vec3_t ;
struct TYPE_10__ {int numSurfaceClusters; size_t firstSurfaceCluster; TYPE_2__* si; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_11__ {float lightmapSampleOffset; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_12__ {int sw; int sh; float* plane; int** vecs; float* origin; int axisNum; } ;
typedef TYPE_3__ rawLightmap_t ;
struct TYPE_13__ {int** lightmap; float* normal; float* xyz; } ;
typedef TYPE_4__ bspDrawVert_t ;



 int CLUSTER_OCCLUDED ;
 int ClusterForPointExtFilter (float*,int ,int,int*) ;
 float DEFAULT_LIGHTMAP_SAMPLE_OFFSET ;
 float DotProduct (float*,float*) ;
 int LUXEL_EPSILON ;
 int MakeNormalVectors (float*,float*,float*) ;

 int PerturbNormal (TYPE_4__*,TYPE_2__*,float*,float**,float**) ;
 int* SUPER_CLUSTER (int,int) ;
 float* SUPER_LUXEL (int ,int,int) ;
 float* SUPER_NORMAL (int,int) ;
 float* SUPER_ORIGIN (int,int) ;
 int VectorAdd (float*,float*,float*) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,float*) ;
 int VectorMA (float*,float,float*,float*) ;
 scalar_t__ dark ;
 int master_mutex ;
 int numLuxelsMapped ;
 int numLuxelsOccluded ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ qfalse ;
 int* surfaceClusters ;

__attribute__((used)) static int MapSingleLuxel( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv, vec4_t plane, float pass, vec3_t stv[ 3 ], vec3_t ttv[ 3 ] ){
 int i, x, y, numClusters, *clusters, pointCluster, *cluster;
 float *luxel, *origin, *normal, d, lightmapSampleOffset;
 shaderInfo_t *si;
 vec3_t pNormal;
 vec3_t vecs[ 3 ];
 vec3_t nudged;
 float *nudge;
 static float nudges[][ 2 ] =
 {

  { -128, 0 },
  { 128, 0 },
  { 0, 128 },
  { 0, -128 },
  { -128, 128 },
  { 128, -128 },
  { 128, 128 },
  { -128, -128 },
  { 129, 129 }
 };



 x = dv->lightmap[ 0 ][ 0 ];
 y = dv->lightmap[ 0 ][ 1 ];
 if ( x < 0 ) {
  x = 0;
 }
 else if ( x >= lm->sw ) {
  x = lm->sw - 1;
 }
 if ( y < 0 ) {
  y = 0;
 }
 else if ( y >= lm->sh ) {
  y = lm->sh - 1;
 }


 if ( info != ((void*)0) ) {
  si = info->si;
  numClusters = info->numSurfaceClusters;
  clusters = &surfaceClusters[ info->firstSurfaceCluster ];
 }
 else
 {
  si = ((void*)0);
  numClusters = 0;
  clusters = ((void*)0);
 }


 luxel = SUPER_LUXEL( 0, x, y );
 origin = SUPER_ORIGIN( x, y );
 normal = SUPER_NORMAL( x, y );
 cluster = SUPER_CLUSTER( x, y );


 if ( ( *cluster ) == CLUSTER_OCCLUDED && lm->plane != ((void*)0) ) {
  return ( *cluster );
 }


 else if ( ( *cluster ) >= 0 ) {

  if ( stv != ((void*)0) ) {
   PerturbNormal( dv, si, pNormal, stv, ttv );
  }
  else{
   VectorCopy( dv->normal, pNormal );
  }


  VectorAdd( normal, pNormal, normal );
  luxel[ 3 ] += 1.0f;
  return ( *cluster );
 }






 if ( lm->vecs != ((void*)0) ) {

  VectorCopy( lm->origin, origin );
  for ( i = 0; i < 3; i++ )
  {

   if ( i == lm->axisNum ) {
    continue;
   }
   origin[ i ] += ( x * lm->vecs[ 0 ][ i ] ) + ( y * lm->vecs[ 1 ][ i ] );
  }


  d = DotProduct( origin, plane ) - plane[ 3 ];
  d /= plane[ lm->axisNum ];
  origin[ lm->axisNum ] -= d;
 }


 else{
  VectorCopy( dv->xyz, origin );
 }


 if ( lm->plane != ((void*)0) ) {
  VectorCopy( lm->vecs[ 0 ], vecs[ 0 ] );
  VectorCopy( lm->vecs[ 1 ], vecs[ 1 ] );
  VectorCopy( lm->plane, vecs[ 2 ] );
 }


 else
 {
  if ( plane != ((void*)0) ) {
   VectorCopy( plane, vecs[ 2 ] );
  }
  else{
   VectorCopy( dv->normal, vecs[ 2 ] );
  }
  MakeNormalVectors( vecs[ 2 ], vecs[ 0 ], vecs[ 1 ] );
 }


 if ( si != ((void*)0) ) {
  lightmapSampleOffset = si->lightmapSampleOffset;
 }
 else{
  lightmapSampleOffset = DEFAULT_LIGHTMAP_SAMPLE_OFFSET;
 }
 if ( lm->axisNum < 0 ) {
  VectorMA( origin, lightmapSampleOffset, vecs[ 2 ], origin );
 }
 else if ( vecs[ 2 ][ lm->axisNum ] < 0.0f ) {
  origin[ lm->axisNum ] -= lightmapSampleOffset;
 }
 else{
  origin[ lm->axisNum ] += lightmapSampleOffset;
 }


 pointCluster = ClusterForPointExtFilter( origin, LUXEL_EPSILON, numClusters, clusters );


 luxel[ 1 ] = 0.0f;


 if ( pointCluster < 0 && dark == qfalse ) {

  nudge = nudges[ 0 ];
  while ( nudge[ 0 ] > 129 && pointCluster < 0 )
  {

   for ( i = 0; i < 3; i++ )
   {

    nudged[ i ] = origin[ i ] + ( nudge[ 0 ] * vecs[ 0 ][ i ] ) + ( nudge[ 1 ] * vecs[ 1 ][ i ] );
   }
   nudge += 2;


   pointCluster = ClusterForPointExtFilter( nudged, LUXEL_EPSILON, numClusters, clusters );
   if ( pointCluster >= 0 ) {
    VectorCopy( nudged, origin );
   }
   luxel[ 1 ] += 1.0f;
  }
 }


 if ( pointCluster < 0 && si != ((void*)0) && dark == qfalse ) {
  VectorMA( dv->xyz, lightmapSampleOffset, dv->normal, nudged );
  pointCluster = ClusterForPointExtFilter( nudged, LUXEL_EPSILON, numClusters, clusters );
  if ( pointCluster >= 0 ) {
   VectorCopy( nudged, origin );
  }
  luxel[ 1 ] += 1.0f;
 }


 if ( pointCluster < 0 ) {
  ( *cluster ) = CLUSTER_OCCLUDED;
  VectorClear( origin );
  VectorClear( normal );
  pthread_mutex_lock( &master_mutex );
  numLuxelsOccluded++;
  pthread_mutex_unlock( &master_mutex );
  return ( *cluster );
 }





 if ( stv ) {
  PerturbNormal( dv, si, pNormal, stv, ttv );
 }
 else{
  VectorCopy( dv->normal, pNormal );
 }


 ( *cluster ) = pointCluster;
 VectorCopy( pNormal, normal );


 luxel[ 0 ] = pass;
 luxel[ 3 ] = 1.0f;


 pthread_mutex_lock( &master_mutex );
 numLuxelsMapped++;
 pthread_mutex_unlock( &master_mutex );


 return ( *cluster );
}

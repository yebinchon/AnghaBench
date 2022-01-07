
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec4_t ;
typedef int * vec3_t ;
typedef int shaderInfo_t ;
struct TYPE_10__ {int numPlanes; int radius; int radius2; int ** planes; int * center; int maxs; int mins; int * si; } ;
typedef TYPE_1__ decalProjector_t ;
struct TYPE_11__ {int * xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;


 int AddPointToBounds (int *,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int DotProduct (int *,int *) ;
 size_t MAX_PROJECTORS ;
 int MakeTextureMatrix (TYPE_1__*,int ,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int PlaneFromPoints (int *,int *,int *,int *) ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,size_t) ;
 int VectorAdd (int ,int ,int *) ;
 int VectorLength (int *) ;
 int VectorMA (int *,float,int ,int *) ;
 int VectorScale (int *,float,int *) ;
 int VectorSubtract (int ,int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 size_t numProjectors ;
 TYPE_1__* projectors ;
 int vec3_origin ;

__attribute__((used)) static int MakeDecalProjector( shaderInfo_t *si, vec4_t projection, float distance, int numVerts, bspDrawVert_t **dv ){
 int i, j;
 decalProjector_t *dp;
 vec3_t xyz;



 if ( numVerts != 3 && numVerts != 4 ) {
  return -1;
 }


 if ( numProjectors >= MAX_PROJECTORS ) {
  Sys_FPrintf( SYS_WRN, "WARNING: MAX_PROJECTORS (%d) exceeded, no more decal projectors available.\n", MAX_PROJECTORS );
  return -2;
 }


 dp = &projectors[ numProjectors ];
 memset( dp, 0, sizeof( *dp ) );


 dp->si = si;
 dp->numPlanes = numVerts + 2;


 if ( !MakeTextureMatrix( dp, projection, dv[ 0 ], dv[ 1 ], dv[ 2 ] ) ) {
  return -1;
 }


 ClearBounds( dp->mins, dp->maxs );
 for ( i = 0; i < numVerts; i++ )
 {
  AddPointToBounds( dv[ i ]->xyz, dp->mins, dp->maxs );
  VectorMA( dv[ i ]->xyz, distance, projection, xyz );
  AddPointToBounds( xyz, dp->mins, dp->maxs );
 }


 VectorAdd( dp->mins, dp->maxs, dp->center );
 VectorScale( dp->center, 0.5f, dp->center );
 VectorSubtract( dp->maxs, dp->center, xyz );
 dp->radius = VectorLength( xyz );
 dp->radius2 = dp->radius * dp->radius;


 if ( !PlaneFromPoints( dp->planes[ 0 ], dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) ) {
  return -1;
 }


 VectorSubtract( vec3_origin, dp->planes[ 0 ], dp->planes[ 1 ] );
 VectorMA( dv[ 0 ]->xyz, distance, projection, xyz );
 dp->planes[ 1 ][ 3 ] = DotProduct( xyz, dp->planes[ 1 ] );


 for ( i = 0; i < numVerts; i++ )
 {
  j = ( i + 1 ) % numVerts;
  VectorMA( dv[ i ]->xyz, distance, projection, xyz );
  if ( !PlaneFromPoints( dp->planes[ i + 2 ], dv[ j ]->xyz, dv[ i ]->xyz, xyz ) ) {
   return -1;
  }
 }


 numProjectors++;
 return numProjectors - 1;
}

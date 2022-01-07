
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int * vec4_t ;
typedef int vec3_t ;
struct TYPE_16__ {TYPE_1__* si; } ;
typedef TYPE_2__ surfaceInfo_t ;
struct TYPE_17__ {int * plane; } ;
typedef TYPE_3__ rawLightmap_t ;
typedef scalar_t__ qboolean ;
struct TYPE_18__ {float** lightmap; int xyz; } ;
typedef TYPE_4__ bspDrawVert_t ;
struct TYPE_15__ {int * normalImage; } ;


 scalar_t__ CalcTangentVectors (int,TYPE_4__**,int *,int *) ;
 int MapSingleLuxel (TYPE_3__*,TYPE_2__*,TYPE_4__*,int *,int,int *,int *) ;
 int MapTriangle_r (TYPE_3__*,TYPE_2__*,TYPE_4__**,int *,int *,int *) ;
 scalar_t__ PlaneFromPoints (int *,int ,int ,int ) ;
 int VectorCopy (int *,int *) ;
 float fabs (float) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static qboolean MapTriangle( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv[ 3 ], qboolean mapNonAxial ){
 int i;
 vec4_t plane;
 vec3_t *stv, *ttv, stvStatic[ 3 ], ttvStatic[ 3 ];



 if ( lm->plane != ((void*)0) ) {
  VectorCopy( lm->plane, plane );
  plane[ 3 ] = lm->plane[ 3 ];
 }


 else if ( PlaneFromPoints( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) == qfalse ) {
  return qfalse;
 }


 if ( info->si->normalImage != ((void*)0) && CalcTangentVectors( 3, dv, stvStatic, ttvStatic ) ) {
  stv = stvStatic;
  ttv = ttvStatic;
 }
 else
 {
  stv = ((void*)0);
  ttv = ((void*)0);
 }


 MapSingleLuxel( lm, info, dv[ 0 ], plane, 1, stv, ttv );
 MapSingleLuxel( lm, info, dv[ 1 ], plane, 1, stv, ttv );
 MapSingleLuxel( lm, info, dv[ 2 ], plane, 1, stv, ttv );


 if ( mapNonAxial ) {

  MapTriangle_r( lm, info, dv, plane, stv, ttv );
  return qtrue;
 }

 for ( i = 0; i < 3; i++ )
 {
  float *a, *b;
  bspDrawVert_t *dv2[ 3 ];



  a = dv[ i ]->lightmap[ 0 ];
  b = dv[ ( i + 1 ) % 3 ]->lightmap[ 0 ];


  if ( fabs( a[ 0 ] - b[ 0 ] ) < 0.01f || fabs( a[ 1 ] - b[ 1 ] ) < 0.01f ) {
   dv2[ 0 ] = dv[ i ];
   dv2[ 1 ] = dv[ ( i + 1 ) % 3 ];
   dv2[ 2 ] = dv[ ( i + 1 ) % 3 ];


   MapTriangle_r( lm, info, dv2, plane, stv, ttv );
  }
 }

 return qtrue;
}

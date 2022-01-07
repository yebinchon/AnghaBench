
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int vec3_t ;
struct TYPE_16__ {TYPE_1__* si; } ;
typedef TYPE_2__ surfaceInfo_t ;
struct TYPE_17__ {float* plane; } ;
typedef TYPE_3__ rawLightmap_t ;
typedef scalar_t__ qboolean ;
struct TYPE_18__ {int xyz; } ;
typedef TYPE_4__ bspDrawVert_t ;
struct TYPE_15__ {int * normalImage; } ;


 scalar_t__ CalcTangentVectors (int,TYPE_4__**,int *,int *) ;
 float DotProduct (float*,int ) ;
 int MapQuad_r (TYPE_3__*,TYPE_2__*,TYPE_4__**,float*,int *,int *) ;
 int MapSingleLuxel (TYPE_3__*,TYPE_2__*,TYPE_4__*,float*,int,int *,int *) ;
 scalar_t__ PlaneFromPoints (float*,int ,int ,int ) ;
 scalar_t__ QUAD_PLANAR_EPSILON ;
 int VectorCopy (float*,float*) ;
 scalar_t__ fabs (float) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static qboolean MapQuad( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv[ 4 ] ){
 float dist;
 vec4_t plane;
 vec3_t *stv, *ttv, stvStatic[ 4 ], ttvStatic[ 4 ];



 if ( lm->plane != ((void*)0) ) {
  VectorCopy( lm->plane, plane );
  plane[ 3 ] = lm->plane[ 3 ];
 }


 else if ( PlaneFromPoints( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) == qfalse ) {
  return qfalse;
 }


 dist = DotProduct( plane, dv[ 3 ]->xyz ) - plane[ 3 ];
 if ( fabs( dist ) > QUAD_PLANAR_EPSILON ) {
  return qfalse;
 }


 if ( info->si->normalImage != ((void*)0) && CalcTangentVectors( 4, dv, stvStatic, ttvStatic ) ) {
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
 MapSingleLuxel( lm, info, dv[ 3 ], plane, 1, stv, ttv );


 MapQuad_r( lm, info, dv, plane, stv, ttv );
 return qtrue;
}

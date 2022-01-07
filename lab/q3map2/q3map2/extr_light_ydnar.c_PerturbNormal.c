
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int vec3_t ;
struct TYPE_7__ {TYPE_1__* normalImage; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_8__ {int normal; int st; } ;
typedef TYPE_3__ bspDrawVert_t ;
struct TYPE_6__ {int height; int width; int pixels; } ;


 scalar_t__ RadSampleImage (int ,int ,int ,int ,float*) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorNormalize (int ,int ) ;
 scalar_t__ qfalse ;

__attribute__((used)) static void PerturbNormal( bspDrawVert_t *dv, shaderInfo_t *si, vec3_t pNormal, vec3_t stv[ 3 ], vec3_t ttv[ 3 ] ){
 int i;
 vec4_t bump;



 VectorCopy( dv->normal, pNormal );


 if ( RadSampleImage( si->normalImage->pixels, si->normalImage->width, si->normalImage->height, dv->st, bump ) == qfalse ) {
  return;
 }


 for ( i = 0; i < 3; i++ )
  bump[ i ] = ( bump[ i ] - 127.0f ) * ( 1.0f / 127.5f );


 VectorMA( dv->normal, bump[ 0 ], stv[ 0 ], pNormal );
 VectorMA( pNormal, bump[ 1 ], ttv[ 0 ], pNormal );
 VectorMA( pNormal, bump[ 2 ], dv->normal, pNormal );


 VectorNormalize( pNormal, pNormal );
}

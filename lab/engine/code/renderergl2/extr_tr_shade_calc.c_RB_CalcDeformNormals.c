
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int int16_t ;
struct TYPE_5__ {int frequency; float amplitude; } ;
struct TYPE_6__ {TYPE_1__ deformationWave; } ;
typedef TYPE_2__ deformStage_t ;
struct TYPE_7__ {int numVertexes; int shaderTime; int ** normal; scalar_t__ xyz; } ;


 float R_NoiseGet4f (int,float,float,int) ;
 int R_VaoPackNormal (int *,float*) ;
 int R_VaoUnpackNormal (float*,int *) ;
 int VectorNormalizeFast (float*) ;
 TYPE_3__ tess ;

void RB_CalcDeformNormals( deformStage_t *ds ) {
 int i;
 float scale;
 float *xyz = ( float * ) tess.xyz;
 int16_t *normal = tess.normal[0];

 for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 ) {
  vec3_t fNormal;

  R_VaoUnpackNormal(fNormal, normal);

  scale = 0.98f;
  scale = R_NoiseGet4f( xyz[0] * scale, xyz[1] * scale, xyz[2] * scale,
   tess.shaderTime * ds->deformationWave.frequency );
  fNormal[ 0 ] += ds->deformationWave.amplitude * scale;

  scale = 0.98f;
  scale = R_NoiseGet4f( 100 + xyz[0] * scale, xyz[1] * scale, xyz[2] * scale,
   tess.shaderTime * ds->deformationWave.frequency );
  fNormal[ 1 ] += ds->deformationWave.amplitude * scale;

  scale = 0.98f;
  scale = R_NoiseGet4f( 200 + xyz[0] * scale, xyz[1] * scale, xyz[2] * scale,
   tess.shaderTime * ds->deformationWave.frequency );
  fNormal[ 2 ] += ds->deformationWave.amplitude * scale;

  VectorNormalizeFast( fNormal );

  R_VaoPackNormal(normal, fNormal);
 }
}

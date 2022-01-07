
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int int16_t ;
struct TYPE_7__ {scalar_t__ frequency; scalar_t__ phase; int amplitude; int base; int func; } ;
struct TYPE_5__ {float deformationSpread; TYPE_4__ deformationWave; } ;
typedef TYPE_1__ deformStage_t ;
struct TYPE_6__ {int numVertexes; int ** normal; scalar_t__ xyz; } ;


 float EvalWaveForm (TYPE_4__*) ;
 int R_VaoUnpackNormal (float*,int *) ;
 float* TableForFunc (int ) ;
 float WAVEVALUE (float*,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_2__ tess ;

void RB_CalcDeformVertexes( deformStage_t *ds )
{
 int i;
 vec3_t offset;
 float scale;
 float *xyz = ( float * ) tess.xyz;
 int16_t *normal = tess.normal[0];
 float *table;

 if ( ds->deformationWave.frequency == 0 )
 {
  scale = EvalWaveForm( &ds->deformationWave );

  for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 )
  {
   R_VaoUnpackNormal(offset, normal);

   xyz[0] += offset[0] * scale;
   xyz[1] += offset[1] * scale;
   xyz[2] += offset[2] * scale;
  }
 }
 else
 {
  table = TableForFunc( ds->deformationWave.func );

  for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 )
  {
   float off = ( xyz[0] + xyz[1] + xyz[2] ) * ds->deformationSpread;

   scale = WAVEVALUE( table, ds->deformationWave.base,
    ds->deformationWave.amplitude,
    ds->deformationWave.phase + off,
    ds->deformationWave.frequency );

   R_VaoUnpackNormal(offset, normal);

   xyz[0] += offset[0] * scale;
   xyz[1] += offset[1] * scale;
   xyz[2] += offset[2] * scale;
  }
 }
}

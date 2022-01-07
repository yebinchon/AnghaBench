
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int frequency; int phase; int amplitude; int base; int func; } ;
struct TYPE_6__ {int moveVector; TYPE_1__ deformationWave; } ;
typedef TYPE_2__ deformStage_t ;
struct TYPE_7__ {int numVertexes; scalar_t__ xyz; } ;


 float* TableForFunc (int ) ;
 int VectorAdd (float*,int ,float*) ;
 int VectorScale (int ,float,int ) ;
 float WAVEVALUE (float*,int ,int ,int ,int ) ;
 TYPE_3__ tess ;

void RB_CalcMoveVertexes( deformStage_t *ds ) {
 int i;
 float *xyz;
 float *table;
 float scale;
 vec3_t offset;

 table = TableForFunc( ds->deformationWave.func );

 scale = WAVEVALUE( table, ds->deformationWave.base,
  ds->deformationWave.amplitude,
  ds->deformationWave.phase,
  ds->deformationWave.frequency );

 VectorScale( ds->moveVector, scale, offset );

 xyz = ( float * ) tess.xyz;
 for ( i = 0; i < tess.numVertexes; i++, xyz += 4 ) {
  VectorAdd( xyz, offset, xyz );
 }
}

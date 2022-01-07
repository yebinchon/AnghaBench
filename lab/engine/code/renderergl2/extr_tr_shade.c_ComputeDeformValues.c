
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec5_t ;
struct TYPE_5__ {int func; int frequency; int phase; int amplitude; int base; } ;
struct TYPE_6__ {int deformation; int bulgeSpeed; int bulgeWidth; int bulgeHeight; int deformationSpread; TYPE_1__ deformationWave; } ;
typedef TYPE_2__ deformStage_t ;
struct TYPE_8__ {TYPE_2__* deforms; } ;
struct TYPE_7__ {TYPE_4__* shader; } ;




 int DGEN_BULGE ;
 int DGEN_NONE ;
 int ShaderRequiresCPUDeforms (TYPE_4__*) ;
 TYPE_3__ tess ;

__attribute__((used)) static void ComputeDeformValues(int *deformGen, vec5_t deformParams)
{

 *deformGen = DGEN_NONE;
 if(!ShaderRequiresCPUDeforms(tess.shader))
 {
  deformStage_t *ds;


  ds = &tess.shader->deforms[0];

  switch (ds->deformation)
  {
   case 128:
    *deformGen = ds->deformationWave.func;

    deformParams[0] = ds->deformationWave.base;
    deformParams[1] = ds->deformationWave.amplitude;
    deformParams[2] = ds->deformationWave.phase;
    deformParams[3] = ds->deformationWave.frequency;
    deformParams[4] = ds->deformationSpread;
    break;

   case 129:
    *deformGen = DGEN_BULGE;

    deformParams[0] = 0;
    deformParams[1] = ds->bulgeHeight;
    deformParams[2] = ds->bulgeWidth;
    deformParams[3] = ds->bulgeSpeed;
    deformParams[4] = 0;
    break;

   default:
    break;
  }
 }
}

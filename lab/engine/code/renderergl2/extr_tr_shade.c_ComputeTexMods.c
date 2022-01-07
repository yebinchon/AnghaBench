
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int numTexMods; TYPE_9__* texMods; } ;
typedef TYPE_4__ textureBundle_t ;
struct TYPE_15__ {TYPE_4__* bundle; } ;
typedef TYPE_5__ shaderStage_t ;
struct TYPE_19__ {int type; int rotateSpeed; int wave; int scale; int scroll; } ;
struct TYPE_18__ {TYPE_2__* currentEntity; } ;
struct TYPE_17__ {int (* Error ) (int ,char*,int,int ) ;} ;
struct TYPE_16__ {TYPE_3__* shader; } ;
struct TYPE_13__ {int name; } ;
struct TYPE_11__ {int shaderTexCoord; } ;
struct TYPE_12__ {TYPE_1__ e; } ;


 int ERR_DROP ;
 int RB_CalcRotateTexMatrix (int ,float*) ;
 int RB_CalcScaleTexMatrix (int ,float*) ;
 int RB_CalcScrollTexMatrix (int ,float*) ;
 int RB_CalcStretchTexMatrix (int *,float*) ;
 int RB_CalcTransformTexMatrix (TYPE_9__*,float*) ;
 int RB_CalcTurbulentFactors (int *,float*,float*) ;
 int TR_MAX_TEXMODS ;
 TYPE_8__ backEnd ;
 TYPE_7__ ri ;
 int stub1 (int ,char*,int,int ) ;
 TYPE_6__ tess ;

__attribute__((used)) static void ComputeTexMods( shaderStage_t *pStage, int bundleNum, float *outMatrix, float *outOffTurb)
{
 int tm;
 float matrix[6], currentmatrix[6];
 textureBundle_t *bundle = &pStage->bundle[bundleNum];

 matrix[0] = 1.0f; matrix[2] = 0.0f; matrix[4] = 0.0f;
 matrix[1] = 0.0f; matrix[3] = 1.0f; matrix[5] = 0.0f;

 currentmatrix[0] = 1.0f; currentmatrix[2] = 0.0f; currentmatrix[4] = 0.0f;
 currentmatrix[1] = 0.0f; currentmatrix[3] = 1.0f; currentmatrix[5] = 0.0f;

 outMatrix[0] = 1.0f; outMatrix[2] = 0.0f;
 outMatrix[1] = 0.0f; outMatrix[3] = 1.0f;

 outOffTurb[0] = 0.0f; outOffTurb[1] = 0.0f; outOffTurb[2] = 0.0f; outOffTurb[3] = 0.0f;

 for ( tm = 0; tm < bundle->numTexMods ; tm++ ) {
  switch ( bundle->texMods[tm].type )
  {

  case 134:
   tm = TR_MAX_TEXMODS;
   break;

  case 128:
   RB_CalcTurbulentFactors(&bundle->texMods[tm].wave, &outOffTurb[2], &outOffTurb[3]);
   break;

  case 135:
   RB_CalcScrollTexMatrix( backEnd.currentEntity->e.shaderTexCoord, matrix );
   break;

  case 131:
   RB_CalcScrollTexMatrix( bundle->texMods[tm].scroll,
          matrix );
   break;

  case 132:
   RB_CalcScaleTexMatrix( bundle->texMods[tm].scale,
          matrix );
   break;

  case 130:
   RB_CalcStretchTexMatrix( &bundle->texMods[tm].wave,
           matrix );
   break;

  case 129:
   RB_CalcTransformTexMatrix( &bundle->texMods[tm],
          matrix );
   break;

  case 133:
   RB_CalcRotateTexMatrix( bundle->texMods[tm].rotateSpeed,
         matrix );
   break;

  default:
   ri.Error( ERR_DROP, "ERROR: unknown texmod '%d' in shader '%s'", bundle->texMods[tm].type, tess.shader->name );
   break;
  }

  switch ( bundle->texMods[tm].type )
  {
  case 134:
  case 128:
  default:
   break;

  case 135:
  case 131:
  case 132:
  case 130:
  case 129:
  case 133:
   outMatrix[0] = matrix[0] * currentmatrix[0] + matrix[2] * currentmatrix[1];
   outMatrix[1] = matrix[1] * currentmatrix[0] + matrix[3] * currentmatrix[1];

   outMatrix[2] = matrix[0] * currentmatrix[2] + matrix[2] * currentmatrix[3];
   outMatrix[3] = matrix[1] * currentmatrix[2] + matrix[3] * currentmatrix[3];

   outOffTurb[0] = matrix[0] * currentmatrix[4] + matrix[2] * currentmatrix[5] + matrix[4];
   outOffTurb[1] = matrix[1] * currentmatrix[4] + matrix[3] * currentmatrix[5] + matrix[5];

   currentmatrix[0] = outMatrix[0];
   currentmatrix[1] = outMatrix[1];
   currentmatrix[2] = outMatrix[2];
   currentmatrix[3] = outMatrix[3];
   currentmatrix[4] = outOffTurb[0];
   currentmatrix[5] = outOffTurb[1];
   break;
  }
 }
}

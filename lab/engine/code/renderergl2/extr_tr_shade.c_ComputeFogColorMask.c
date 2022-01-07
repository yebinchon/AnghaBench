
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_3__ {int adjustColorsForFog; } ;
typedef TYPE_1__ shaderStage_t ;






__attribute__((used)) static void ComputeFogColorMask( shaderStage_t *pStage, vec4_t fogColorMask )
{
 switch(pStage->adjustColorsForFog)
 {
  case 129:
   fogColorMask[0] =
   fogColorMask[1] =
   fogColorMask[2] = 1.0f;
   fogColorMask[3] = 0.0f;
   break;
  case 130:
   fogColorMask[0] =
   fogColorMask[1] =
   fogColorMask[2] = 0.0f;
   fogColorMask[3] = 1.0f;
   break;
  case 128:
   fogColorMask[0] =
   fogColorMask[1] =
   fogColorMask[2] =
   fogColorMask[3] = 1.0f;
   break;
  default:
   fogColorMask[0] =
   fogColorMask[1] =
   fogColorMask[2] =
   fogColorMask[3] = 0.0f;
   break;
 }
}

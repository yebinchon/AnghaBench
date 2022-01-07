
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dicPos; } ;
struct TYPE_7__ {TYPE_1__ decoder; } ;
struct TYPE_6__ {TYPE_3__ decoder; scalar_t__ outBufMode; } ;
typedef scalar_t__ SizeT ;
typedef int SRes ;
typedef scalar_t__ ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef scalar_t__ ECoderStatus ;
typedef scalar_t__ ECoderFinishMode ;
typedef TYPE_2__ CLzma2Dec_Spec ;
typedef int Byte ;


 int Lzma2Dec_DecodeToBuf (TYPE_3__*,int *,scalar_t__*,int const*,scalar_t__*,int ,scalar_t__*) ;
 int Lzma2Dec_DecodeToDic (TYPE_3__*,scalar_t__,int const*,scalar_t__*,int ,scalar_t__*) ;
 int UNUSED_VAR (int) ;

__attribute__((used)) static SRes Lzma2State_Code2(void *pp, Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen,
    int srcWasFinished, ECoderFinishMode finishMode,

    ECoderStatus *status)
{
  CLzma2Dec_Spec *spec = (CLzma2Dec_Spec *)pp;
  ELzmaStatus status2;

  SRes res;
  UNUSED_VAR(srcWasFinished);
  if (spec->outBufMode)
  {
    SizeT dicPos = spec->decoder.decoder.dicPos;
    SizeT dicLimit = dicPos + *destLen;
    res = Lzma2Dec_DecodeToDic(&spec->decoder, dicLimit, src, srcLen, (ELzmaFinishMode)finishMode, &status2);
    *destLen = spec->decoder.decoder.dicPos - dicPos;
  }
  else
    res = Lzma2Dec_DecodeToBuf(&spec->decoder, dest, destLen, src, srcLen, (ELzmaFinishMode)finishMode, &status2);


  *status = (ECoderStatus)status2;
  return res;
}

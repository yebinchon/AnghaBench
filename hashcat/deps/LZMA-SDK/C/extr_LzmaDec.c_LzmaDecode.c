
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dicPos; scalar_t__ dicBufSize; int * dic; } ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAllocPtr ;
typedef scalar_t__ ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef TYPE_1__ CLzmaDec ;
typedef int Byte ;


 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ;
 scalar_t__ LZMA_STATUS_NOT_SPECIFIED ;
 int LzmaDec_AllocateProbs (TYPE_1__*,int const*,unsigned int,int ) ;
 int LzmaDec_Construct (TYPE_1__*) ;
 scalar_t__ LzmaDec_DecodeToDic (TYPE_1__*,scalar_t__,int const*,scalar_t__*,int ,scalar_t__*) ;
 int LzmaDec_FreeProbs (TYPE_1__*,int ) ;
 int LzmaDec_Init (TYPE_1__*) ;
 scalar_t__ RC_INIT_SIZE ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_OK ;

SRes LzmaDecode(Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen,
    const Byte *propData, unsigned propSize, ELzmaFinishMode finishMode,
    ELzmaStatus *status, ISzAllocPtr alloc)
{
  CLzmaDec p;
  SRes res;
  SizeT outSize = *destLen, inSize = *srcLen;
  *destLen = *srcLen = 0;
  *status = LZMA_STATUS_NOT_SPECIFIED;
  if (inSize < RC_INIT_SIZE)
    return SZ_ERROR_INPUT_EOF;
  LzmaDec_Construct(&p);
  RINOK(LzmaDec_AllocateProbs(&p, propData, propSize, alloc));
  p.dic = dest;
  p.dicBufSize = outSize;
  LzmaDec_Init(&p);
  *srcLen = inSize;
  res = LzmaDec_DecodeToDic(&p, outSize, src, srcLen, finishMode, status);
  *destLen = p.dicPos;
  if (res == SZ_OK && *status == LZMA_STATUS_NEEDS_MORE_INPUT)
    res = SZ_ERROR_INPUT_EOF;
  LzmaDec_FreeProbs(&p, alloc);
  return res;
}

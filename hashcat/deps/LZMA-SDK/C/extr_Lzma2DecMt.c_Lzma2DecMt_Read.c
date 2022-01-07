
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UInt64 ;
struct TYPE_3__ {scalar_t__ inBufSize_ST; } ;
struct TYPE_4__ {size_t outSize; size_t outProcessed; scalar_t__ inPos; scalar_t__ inLim; size_t inBuf; int inProcessed; int dec; int inStream; TYPE_1__ props; scalar_t__ finishMode; scalar_t__ outSize_Defined; } ;
typedef size_t SizeT ;
typedef scalar_t__ SRes ;
typedef int ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef scalar_t__ CLzma2DecMtHandle ;
typedef TYPE_2__ CLzma2DecMt ;
typedef int Byte ;


 scalar_t__ ISeqInStream_Read (int ,size_t,scalar_t__*) ;
 int LZMA_FINISH_ANY ;
 int LZMA_FINISH_END ;
 scalar_t__ Lzma2Dec_DecodeToBuf (int *,int *,size_t*,size_t,size_t*,int ,int *) ;
 scalar_t__ SZ_OK ;

SRes Lzma2DecMt_Read(CLzma2DecMtHandle pp,
    Byte *data, size_t *outSize,
    UInt64 *inStreamProcessed)
{
  CLzma2DecMt *p = (CLzma2DecMt *)pp;
  ELzmaFinishMode finishMode;
  SRes readRes;
  size_t size = *outSize;

  *outSize = 0;
  *inStreamProcessed = 0;

  finishMode = LZMA_FINISH_ANY;
  if (p->outSize_Defined)
  {
    const UInt64 rem = p->outSize - p->outProcessed;
    if (size >= rem)
    {
      size = (size_t)rem;
      if (p->finishMode)
        finishMode = LZMA_FINISH_END;
    }
  }

  readRes = SZ_OK;

  for (;;)
  {
    SizeT inCur;
    SizeT outCur;
    ELzmaStatus status;
    SRes res;

    if (p->inPos == p->inLim && readRes == SZ_OK)
    {
      p->inPos = 0;
      p->inLim = p->props.inBufSize_ST;
      readRes = ISeqInStream_Read(p->inStream, p->inBuf, &p->inLim);
    }

    inCur = p->inLim - p->inPos;
    outCur = size;

    res = Lzma2Dec_DecodeToBuf(&p->dec, data, &outCur,
        p->inBuf + p->inPos, &inCur, finishMode, &status);

    p->inPos += inCur;
    p->inProcessed += inCur;
    *inStreamProcessed += inCur;
    p->outProcessed += outCur;
    *outSize += outCur;
    size -= outCur;
    data += outCur;

    if (res != 0)
      return res;
    if (inCur == 0 && outCur == 0)
      return readRes;
  }
}

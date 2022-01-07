
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UInt64 ;
struct TYPE_8__ {size_t outDataWritten; int headerParsedOk; } ;
struct TYPE_5__ {scalar_t__ ignoreErrors; } ;
struct TYPE_7__ {TYPE_1__ props; TYPE_2__* coders; } ;
struct TYPE_6__ {size_t inCodeSize; size_t outCodeSize; scalar_t__ inPreHeaderSize; scalar_t__ codeRes; size_t outPreSize; size_t inPreSize; TYPE_4__ dec; int status; int outBuf; } ;
typedef scalar_t__ SRes ;
typedef int ECoderStatus ;
typedef TYPE_2__ CXzDecMtThread ;
typedef TYPE_3__ CXzDecMt ;
typedef int Byte ;


 int CODER_FINISH_END ;
 int False ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;
 scalar_t__ S_OK ;
 int True ;
 scalar_t__ XzUnpacker_Code (TYPE_4__*,int *,size_t*,int const*,size_t*,int,int ,int *) ;

__attribute__((used)) static SRes XzDecMt_Callback_Code(void *pp, unsigned coderIndex,
    const Byte *src, size_t srcSize, int srcFinished,

    UInt64 *inCodePos, UInt64 *outCodePos, int *stop)
{
  CXzDecMt *me = (CXzDecMt *)pp;
  CXzDecMtThread *coder = &me->coders[coderIndex];

  *inCodePos = coder->inCodeSize;
  *outCodePos = coder->outCodeSize;
  *stop = True;

  if (coder->inCodeSize < coder->inPreHeaderSize)
  {
    UInt64 rem = coder->inPreHeaderSize - coder->inCodeSize;
    size_t step = srcSize;
    if (step > rem)
      step = (size_t)rem;
    src += step;
    srcSize -= step;
    coder->inCodeSize += step;
    if (coder->inCodeSize < coder->inPreHeaderSize)
    {
      *stop = False;
      return SZ_OK;
    }
  }

  if (!coder->dec.headerParsedOk)
    return SZ_OK;
  if (!coder->outBuf)
    return SZ_OK;

  if (coder->codeRes == SZ_OK)
  {
    ECoderStatus status;
    SRes res;
    size_t srcProcessed = srcSize;
    size_t outSizeCur = coder->outPreSize - coder->dec.outDataWritten;



    res = XzUnpacker_Code(&coder->dec,
        ((void*)0), &outSizeCur,
        src, &srcProcessed, srcFinished,

        CODER_FINISH_END,
        &status);



    coder->codeRes = res;
    coder->status = status;
    coder->inCodeSize += srcProcessed;
    coder->outCodeSize = coder->dec.outDataWritten;
    *inCodePos = coder->inCodeSize;
    *outCodePos = coder->outCodeSize;

    if (res == SZ_OK)
    {
      if (srcProcessed == srcSize)
        *stop = False;
      return SZ_OK;
    }
  }

  if (me->props.ignoreErrors && coder->codeRes != SZ_ERROR_MEM)
  {
    *inCodePos = coder->inPreSize;
    *outCodePos = coder->outPreSize;
    return S_OK;
  }
  return coder->codeRes;
}

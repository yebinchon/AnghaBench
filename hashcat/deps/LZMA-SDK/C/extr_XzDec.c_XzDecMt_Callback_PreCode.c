
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int block; int decoder; int headerParsedOk; } ;
struct TYPE_5__ {scalar_t__ ignoreErrors; } ;
struct TYPE_7__ {size_t unpackBlockMaxSize; TYPE_1__ props; int allocMid; TYPE_2__* coders; } ;
struct TYPE_6__ {size_t outBufSize; size_t outPreSize; scalar_t__ codeRes; int * outBuf; TYPE_4__ dec; } ;
typedef scalar_t__ SRes ;
typedef TYPE_2__ CXzDecMtThread ;
typedef TYPE_3__ CXzDecMt ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 int ISzAlloc_Free (int ,int *) ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;
 scalar_t__ S_OK ;
 scalar_t__ XzDecMix_Init (int *,int *,int *,size_t) ;
 int XzUnpacker_SetOutBuf (TYPE_4__*,int *,size_t) ;

__attribute__((used)) static SRes XzDecMt_Callback_PreCode(void *pp, unsigned coderIndex)
{
  CXzDecMt *me = (CXzDecMt *)pp;
  CXzDecMtThread *coder = &me->coders[coderIndex];
  Byte *dest;

  if (!coder->dec.headerParsedOk)
    return SZ_OK;

  dest = coder->outBuf;

  if (!dest || coder->outBufSize < coder->outPreSize)
  {
    if (dest)
    {
      ISzAlloc_Free(me->allocMid, dest);
      coder->outBuf = ((void*)0);
      coder->outBufSize = 0;
    }
    {
      size_t outPreSize = coder->outPreSize;
      if (outPreSize == 0)
        outPreSize = 1;
      dest = (Byte *)ISzAlloc_Alloc(me->allocMid, outPreSize);
    }
    if (!dest)
      return SZ_ERROR_MEM;
    coder->outBuf = dest;
    coder->outBufSize = coder->outPreSize;

    if (coder->outBufSize > me->unpackBlockMaxSize)
      me->unpackBlockMaxSize = coder->outBufSize;
  }



  XzUnpacker_SetOutBuf(&coder->dec, coder->outBuf, coder->outBufSize);

  {
    SRes res = XzDecMix_Init(&coder->dec.decoder, &coder->dec.block, coder->outBuf, coder->outBufSize);

    coder->codeRes = res;
    if (res != SZ_OK)
    {

      if (me->props.ignoreErrors && res != SZ_ERROR_MEM)
        return S_OK;
      return res;
    }
  }

  return SZ_OK;
}

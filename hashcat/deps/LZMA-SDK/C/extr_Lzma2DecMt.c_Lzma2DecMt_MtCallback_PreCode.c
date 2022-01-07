
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dicBufSize; int * dic; } ;
struct TYPE_10__ {TYPE_1__ decoder; } ;
struct TYPE_9__ {int prop; int allocMid; TYPE_3__* coders; } ;
struct TYPE_7__ {int vt; } ;
struct TYPE_8__ {scalar_t__ inPreSize; scalar_t__ outBufSize; scalar_t__ outPreSize; TYPE_2__ alloc; TYPE_5__ dec; int needInit; int * outBuf; int codeRes; } ;
typedef int SRes ;
typedef TYPE_3__ CLzma2DecMtThread ;
typedef TYPE_4__ CLzma2DecMt ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,scalar_t__) ;
 int ISzAlloc_Free (int ,int *) ;
 int Lzma2Dec_AllocateProbs (TYPE_5__*,int ,int *) ;
 int SZ_ERROR_DATA ;
 int SZ_ERROR_MEM ;
 int True ;

__attribute__((used)) static SRes Lzma2DecMt_MtCallback_PreCode(void *pp, unsigned coderIndex)
{
  CLzma2DecMt *me = (CLzma2DecMt *)pp;
  CLzma2DecMtThread *t = &me->coders[coderIndex];
  Byte *dest = t->outBuf;

  if (t->inPreSize == 0)
  {
    t->codeRes = SZ_ERROR_DATA;
    return t->codeRes;
  }

  if (!dest || t->outBufSize < t->outPreSize)
  {
    if (dest)
    {
      ISzAlloc_Free(me->allocMid, dest);
      t->outBuf = ((void*)0);
      t->outBufSize = 0;
    }

    dest = (Byte *)ISzAlloc_Alloc(me->allocMid, t->outPreSize

        );

    if (!dest)
      return SZ_ERROR_MEM;
    t->outBuf = dest;
    t->outBufSize = t->outPreSize;
  }

  t->dec.decoder.dic = dest;
  t->dec.decoder.dicBufSize = t->outPreSize;

  t->needInit = True;

  return Lzma2Dec_AllocateProbs(&t->dec, me->prop, &t->alloc.vt);
}

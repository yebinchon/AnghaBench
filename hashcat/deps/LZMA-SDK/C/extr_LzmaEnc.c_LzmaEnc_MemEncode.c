
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* outStream; } ;
struct TYPE_9__ {int writeEndMark; scalar_t__ nowPos64; TYPE_1__ rc; } ;
struct TYPE_7__ {int Write; } ;
struct TYPE_8__ {scalar_t__ overflow; scalar_t__ rem; TYPE_2__ vt; int * data; } ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAllocPtr ;
typedef int ICompressProgress ;
typedef TYPE_3__ CLzmaEnc_SeqOutStreamBuf ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_4__ CLzmaEnc ;
typedef int Byte ;


 scalar_t__ False ;
 scalar_t__ LzmaEnc_Encode2 (TYPE_4__*,int *) ;
 scalar_t__ LzmaEnc_MemPrepare (scalar_t__,int const*,scalar_t__,int ,int ,int ) ;
 scalar_t__ SZ_ERROR_FAIL ;
 scalar_t__ SZ_ERROR_OUTPUT_EOF ;
 scalar_t__ SZ_OK ;
 int SeqOutStreamBuf_Write ;

SRes LzmaEnc_MemEncode(CLzmaEncHandle pp, Byte *dest, SizeT *destLen, const Byte *src, SizeT srcLen,
    int writeEndMark, ICompressProgress *progress, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  SRes res;
  CLzmaEnc *p = (CLzmaEnc *)pp;

  CLzmaEnc_SeqOutStreamBuf outStream;

  outStream.vt.Write = SeqOutStreamBuf_Write;
  outStream.data = dest;
  outStream.rem = *destLen;
  outStream.overflow = False;

  p->writeEndMark = writeEndMark;
  p->rc.outStream = &outStream.vt;

  res = LzmaEnc_MemPrepare(pp, src, srcLen, 0, alloc, allocBig);

  if (res == SZ_OK)
  {
    res = LzmaEnc_Encode2(p, progress);
    if (res == SZ_OK && p->nowPos64 != srcLen)
      res = SZ_ERROR_FAIL;
  }

  *destLen -= outStream.rem;
  if (outStream.overflow)
    return SZ_ERROR_OUTPUT_EOF;
  return res;
}

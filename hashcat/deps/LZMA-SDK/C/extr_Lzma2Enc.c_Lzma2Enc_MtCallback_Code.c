
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mtProgress; } ;
struct TYPE_8__ {size_t outBufSize; size_t* outBufsDataSizes; int * coders; TYPE_1__ mtCoder; int ** outBufs; int alloc; } ;
struct TYPE_7__ {int vt; scalar_t__ outSize; scalar_t__ inSize; int * mtProgress; } ;
typedef int SRes ;
typedef TYPE_2__ CMtProgressThunk ;
typedef TYPE_3__ CLzma2Enc ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 int Lzma2Enc_EncodeMt1 (TYPE_3__*,int *,int *,int *,size_t*,int *,int const*,size_t,int,int *) ;
 int MtProgressThunk_CreateVTable (TYPE_2__*) ;
 int SZ_ERROR_MEM ;

__attribute__((used)) static SRes Lzma2Enc_MtCallback_Code(void *pp, unsigned coderIndex, unsigned outBufIndex,
    const Byte *src, size_t srcSize, int finished)
{
  CLzma2Enc *me = (CLzma2Enc *)pp;
  size_t destSize = me->outBufSize;
  SRes res;
  CMtProgressThunk progressThunk;

  Byte *dest = me->outBufs[outBufIndex];

  me->outBufsDataSizes[outBufIndex] = 0;

  if (!dest)
  {
    dest = (Byte *)ISzAlloc_Alloc(me->alloc, me->outBufSize);
    if (!dest)
      return SZ_ERROR_MEM;
    me->outBufs[outBufIndex] = dest;
  }

  MtProgressThunk_CreateVTable(&progressThunk);
  progressThunk.mtProgress = &me->mtCoder.mtProgress;
  progressThunk.inSize = 0;
  progressThunk.outSize = 0;

  res = Lzma2Enc_EncodeMt1(me,
      &me->coders[coderIndex],
      ((void*)0), dest, &destSize,
      ((void*)0), src, srcSize,
      finished,
      &progressThunk.vt);

  me->outBufsDataSizes[outBufIndex] = destSize;

  return res;
}

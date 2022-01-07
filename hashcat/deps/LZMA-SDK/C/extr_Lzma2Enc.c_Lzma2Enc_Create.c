
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_6__ {scalar_t__ outBufSize; int ** outBufs; int mtCoder_WasConstructed; TYPE_1__* coders; void* allocBig; void* alloc; int * tempBufLzma; scalar_t__ expectedDataSize; int props; } ;
struct TYPE_5__ {int * enc; } ;
typedef scalar_t__ Int64 ;
typedef void* ISzAllocPtr ;
typedef TYPE_2__* CLzma2EncHandle ;
typedef TYPE_2__ CLzma2Enc ;


 int False ;
 scalar_t__ ISzAlloc_Alloc (void*,int) ;
 int Lzma2EncProps_Init (int *) ;
 int Lzma2EncProps_Normalize (int *) ;
 unsigned int MTCODER__BLOCKS_MAX ;
 unsigned int MTCODER__THREADS_MAX ;

CLzma2EncHandle Lzma2Enc_Create(ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  CLzma2Enc *p = (CLzma2Enc *)ISzAlloc_Alloc(alloc, sizeof(CLzma2Enc));
  if (!p)
    return ((void*)0);
  Lzma2EncProps_Init(&p->props);
  Lzma2EncProps_Normalize(&p->props);
  p->expectedDataSize = (UInt64)(Int64)-1;
  p->tempBufLzma = ((void*)0);
  p->alloc = alloc;
  p->allocBig = allocBig;
  {
    unsigned i;
    for (i = 0; i < MTCODER__THREADS_MAX; i++)
      p->coders[i].enc = ((void*)0);
  }


  p->mtCoder_WasConstructed = False;
  {
    unsigned i;
    for (i = 0; i < MTCODER__BLOCKS_MAX; i++)
      p->outBufs[i] = ((void*)0);
    p->outBufSize = 0;
  }


  return p;
}

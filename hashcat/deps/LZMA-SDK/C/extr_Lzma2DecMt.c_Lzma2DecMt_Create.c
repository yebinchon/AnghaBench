
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int numAlignBits; void* baseAlloc; scalar_t__ offset; } ;
struct TYPE_7__ {TYPE_1__* coders; void* mtc_WasConstructed; void* dec_created; scalar_t__ inBufSize; int * inBuf; TYPE_5__ alignOffsetAlloc; void* allocMid; } ;
struct TYPE_6__ {scalar_t__ outBufSize; int * outBuf; void* dec_created; } ;
typedef void* ISzAllocPtr ;
typedef TYPE_1__ CLzma2DecMtThread ;
typedef TYPE_2__* CLzma2DecMtHandle ;
typedef TYPE_2__ CLzma2DecMt ;


 int AlignOffsetAlloc_CreateVTable (TYPE_5__*) ;
 void* False ;
 scalar_t__ ISzAlloc_Alloc (void*,int) ;
 unsigned int MTDEC__THREADS_MAX ;

CLzma2DecMtHandle Lzma2DecMt_Create(ISzAllocPtr alloc, ISzAllocPtr allocMid)
{
  CLzma2DecMt *p = (CLzma2DecMt *)ISzAlloc_Alloc(alloc, sizeof(CLzma2DecMt));
  if (!p)
    return ((void*)0);


  p->allocMid = allocMid;

  AlignOffsetAlloc_CreateVTable(&p->alignOffsetAlloc);
  p->alignOffsetAlloc.numAlignBits = 7;
  p->alignOffsetAlloc.offset = 0;
  p->alignOffsetAlloc.baseAlloc = alloc;

  p->inBuf = ((void*)0);
  p->inBufSize = 0;
  p->dec_created = False;




  p->mtc_WasConstructed = False;
  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CLzma2DecMtThread *t = &p->coders[i];
      t->dec_created = False;
      t->outBuf = ((void*)0);
      t->outBufSize = 0;
    }
  }


  return p;
}

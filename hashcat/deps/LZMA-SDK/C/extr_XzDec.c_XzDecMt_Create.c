
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int numAlignBits; int vt; scalar_t__ offset; void* baseAlloc; } ;
struct TYPE_7__ {TYPE_1__* coders; void* mtc_WasConstructed; int props; scalar_t__ unpackBlockMaxSize; TYPE_5__ alignOffsetAlloc; int dec; scalar_t__ inBufSize; int * inBuf; scalar_t__ outBufSize; int * outBuf; void* allocMid; } ;
struct TYPE_6__ {scalar_t__ outBufSize; int * outBuf; void* dec_created; } ;
typedef void* ISzAllocPtr ;
typedef TYPE_1__ CXzDecMtThread ;
typedef TYPE_2__* CXzDecMtHandle ;
typedef TYPE_2__ CXzDecMt ;


 int AlignOffsetAlloc_CreateVTable (TYPE_5__*) ;
 void* False ;
 scalar_t__ ISzAlloc_Alloc (void*,int) ;
 unsigned int MTDEC__THREADS_MAX ;
 int XzDecMtProps_Init (int *) ;
 int XzUnpacker_Construct (int *,int *) ;

CXzDecMtHandle XzDecMt_Create(ISzAllocPtr alloc, ISzAllocPtr allocMid)
{
  CXzDecMt *p = (CXzDecMt *)ISzAlloc_Alloc(alloc, sizeof(CXzDecMt));
  if (!p)
    return ((void*)0);

  AlignOffsetAlloc_CreateVTable(&p->alignOffsetAlloc);
  p->alignOffsetAlloc.baseAlloc = alloc;
  p->alignOffsetAlloc.numAlignBits = 7;
  p->alignOffsetAlloc.offset = 0;

  p->allocMid = allocMid;

  p->outBuf = ((void*)0);
  p->outBufSize = 0;
  p->inBuf = ((void*)0);
  p->inBufSize = 0;

  XzUnpacker_Construct(&p->dec, &p->alignOffsetAlloc.vt);

  p->unpackBlockMaxSize = 0;

  XzDecMtProps_Init(&p->props);


  p->mtc_WasConstructed = False;
  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CXzDecMtThread *coder = &p->coders[i];
      coder->dec_created = False;
      coder->outBuf = ((void*)0);
      coder->outBufSize = 0;
    }
  }


  return p;
}

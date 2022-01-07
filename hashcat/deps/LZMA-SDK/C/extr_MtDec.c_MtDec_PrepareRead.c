
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ crossStart; scalar_t__ crossEnd; unsigned int numStartedThreads; unsigned int numFilledThreads; unsigned int filledThreadStart; int * threads; int * crossBlock; int alloc; } ;
typedef TYPE_1__ CMtDec ;


 int ISzAlloc_Free (int ,int *) ;
 unsigned int MTDEC__THREADS_MAX ;
 int MtDecThread_FreeInBufs (int *) ;

int MtDec_PrepareRead(CMtDec *p)
{
  if (p->crossBlock && p->crossStart == p->crossEnd)
  {
    ISzAlloc_Free(p->alloc, p->crossBlock);
    p->crossBlock = ((void*)0);
  }

  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
      if (i > p->numStartedThreads
          || p->numFilledThreads <=
            (i >= p->filledThreadStart ?
              i - p->filledThreadStart :
              i + p->numStartedThreads - p->filledThreadStart))
        MtDecThread_FreeInBufs(&p->threads[i]);
  }

  return (p->numFilledThreads != 0) || (p->crossStart != p->crossEnd);
}

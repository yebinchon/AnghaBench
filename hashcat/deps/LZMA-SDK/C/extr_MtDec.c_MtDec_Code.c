
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ WRes ;
typedef scalar_t__ UInt64 ;
struct TYPE_9__ {int blockIndex; scalar_t__ threadingErrorSRes; unsigned int numThreadsMax; unsigned int numStartedThreads_Limit; scalar_t__ inBufSize; scalar_t__ allocatedBufsSize; void* needContinue; void* overflow; void* isAllocError; scalar_t__ numStartedThreads; TYPE_1__* threads; scalar_t__ exitThreadWRes; void* exitThread; int progress; int mtProgress; int * crossBlock; int alloc; scalar_t__ numFilledThreads; scalar_t__ filledThreadStart; scalar_t__ crossEnd; scalar_t__ crossStart; void* wasInterrupted; scalar_t__ codeRes; scalar_t__ readRes; scalar_t__ readProcessed; scalar_t__ interruptIndex; void* needInterrupt; void* readWasFinished; scalar_t__ inProcessed; } ;
struct TYPE_8__ {int canRead; int canWrite; scalar_t__ inBuf; } ;
typedef scalar_t__ SRes ;
typedef scalar_t__ Int64 ;
typedef TYPE_1__ CMtDecThread ;
typedef TYPE_2__ CMtDec ;


 scalar_t__ Event_Set (int *) ;
 void* False ;
 int ISzAlloc_Free (int ,int *) ;
 unsigned int MTDEC__THREADS_MAX ;
 scalar_t__ MY_SRes_HRESULT_FROM_WRes (scalar_t__) ;
 scalar_t__ MtDecThread_CreateEvents (TYPE_1__*) ;
 int MtDecThread_FreeInBufs (TYPE_1__*) ;
 int MtDec_CloseThreads (TYPE_2__*) ;
 int MtProgress_Init (int *,int ) ;
 scalar_t__ SZ_OK ;
 scalar_t__ ThreadFunc (TYPE_1__*) ;
 void* True ;

SRes MtDec_Code(CMtDec *p)
{
  unsigned i;

  p->inProcessed = 0;

  p->blockIndex = 1;
  p->isAllocError = False;
  p->overflow = False;
  p->threadingErrorSRes = SZ_OK;

  p->needContinue = True;

  p->readWasFinished = False;
  p->needInterrupt = False;
  p->interruptIndex = (UInt64)(Int64)-1;

  p->readProcessed = 0;
  p->readRes = SZ_OK;
  p->codeRes = SZ_OK;
  p->wasInterrupted = False;

  p->crossStart = 0;
  p->crossEnd = 0;

  p->filledThreadStart = 0;
  p->numFilledThreads = 0;

  {
    unsigned numThreads = p->numThreadsMax;
    if (numThreads > MTDEC__THREADS_MAX)
      numThreads = MTDEC__THREADS_MAX;
    p->numStartedThreads_Limit = numThreads;
    p->numStartedThreads = 0;
  }

  if (p->inBufSize != p->allocatedBufsSize)
  {
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CMtDecThread *t = &p->threads[i];
      if (t->inBuf)
        MtDecThread_FreeInBufs(t);
    }
    if (p->crossBlock)
    {
      ISzAlloc_Free(p->alloc, p->crossBlock);
      p->crossBlock = ((void*)0);
    }

    p->allocatedBufsSize = p->inBufSize;
  }

  MtProgress_Init(&p->mtProgress, p->progress);


  p->exitThread = False;
  p->exitThreadWRes = 0;

  {
    WRes wres;
    WRes sres;
    CMtDecThread *nextThread = &p->threads[p->numStartedThreads++];

    wres = MtDecThread_CreateEvents(nextThread);
    if (wres == 0) { wres = Event_Set(&nextThread->canWrite);
    if (wres == 0) { wres = Event_Set(&nextThread->canRead);
    if (wres == 0) { wres = ThreadFunc(nextThread);
    if (wres != 0)
    {
      p->needContinue = False;
      MtDec_CloseThreads(p);
    }}}}




    sres = MY_SRes_HRESULT_FROM_WRes(wres);

    if (sres != 0)
      p->threadingErrorSRes = sres;

    if (



        p->isAllocError
        || p->threadingErrorSRes != SZ_OK
        || p->overflow)
    {

    }
    else
      p->needContinue = False;

    if (p->needContinue)
      return SZ_OK;


      return sres;

  }
}

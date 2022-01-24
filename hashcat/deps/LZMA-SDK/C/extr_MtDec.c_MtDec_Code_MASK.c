#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WRes ;
typedef  scalar_t__ UInt64 ;
struct TYPE_9__ {int blockIndex; scalar_t__ threadingErrorSRes; unsigned int numThreadsMax; unsigned int numStartedThreads_Limit; scalar_t__ inBufSize; scalar_t__ allocatedBufsSize; void* needContinue; void* overflow; void* isAllocError; scalar_t__ numStartedThreads; TYPE_1__* threads; scalar_t__ exitThreadWRes; void* exitThread; int /*<<< orphan*/  progress; int /*<<< orphan*/  mtProgress; int /*<<< orphan*/ * crossBlock; int /*<<< orphan*/  alloc; scalar_t__ numFilledThreads; scalar_t__ filledThreadStart; scalar_t__ crossEnd; scalar_t__ crossStart; void* wasInterrupted; scalar_t__ codeRes; scalar_t__ readRes; scalar_t__ readProcessed; scalar_t__ interruptIndex; void* needInterrupt; void* readWasFinished; scalar_t__ inProcessed; } ;
struct TYPE_8__ {int /*<<< orphan*/  canRead; int /*<<< orphan*/  canWrite; scalar_t__ inBuf; } ;
typedef  scalar_t__ SRes ;
typedef  scalar_t__ Int64 ;
typedef  TYPE_1__ CMtDecThread ;
typedef  TYPE_2__ CMtDec ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* False ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int MTDEC__THREADS_MAX ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 void* True ; 

SRes FUNC8(CMtDec *p)
{
  unsigned i;

  p->inProcessed = 0;

  p->blockIndex = 1; // it must be larger than not_defined index (0)
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
        FUNC4(t);
    }
    if (p->crossBlock)
    {
      FUNC1(p->alloc, p->crossBlock);
      p->crossBlock = NULL;
    }

    p->allocatedBufsSize = p->inBufSize;
  }

  FUNC6(&p->mtProgress, p->progress);

  // RINOK_THREAD(ArEvent_OptCreate_And_Reset(&p->finishedEvent));
  p->exitThread = False;
  p->exitThreadWRes = 0;

  {
    WRes wres;
    WRes sres;
    CMtDecThread *nextThread = &p->threads[p->numStartedThreads++];
    // wres = MtDecThread_CreateAndStart(nextThread);
    wres = FUNC3(nextThread);
    if (wres == 0) { wres = FUNC0(&nextThread->canWrite);
    if (wres == 0) { wres = FUNC0(&nextThread->canRead);
    if (wres == 0) { wres = FUNC7(nextThread);
    if (wres != 0)
    {
      p->needContinue = False;
      FUNC5(p);
    }}}}

    // wres = 17; // for test
    // wres = Event_Wait(&p->finishedEvent);

    sres = FUNC2(wres);

    if (sres != 0)
      p->threadingErrorSRes = sres;

    if (
        // wres == 0
        // wres != 0
        // || p->mtc.codeRes == SZ_ERROR_MEM
        p->isAllocError
        || p->threadingErrorSRes != SZ_OK
        || p->overflow)
    {
      // p->needContinue = True;
    }
    else
      p->needContinue = False;
    
    if (p->needContinue)
      return SZ_OK;

    // if (sres != SZ_OK)
      return sres;
    // return E_FAIL;
  }
}
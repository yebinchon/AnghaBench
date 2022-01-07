
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cs; } ;
struct TYPE_7__ {size_t inBufSize; TYPE_1__ mtProgress; TYPE_2__* threads; scalar_t__ allocatedBufsSize; int * mtCallbackObject; int * mtCallback; int * alloc; int * progress; scalar_t__ numFilledThreads; scalar_t__ crossEnd; scalar_t__ crossStart; int * crossBlock; int * inStream; scalar_t__ numThreadsMax; } ;
struct TYPE_6__ {unsigned int index; int thread; int canWrite; int canRead; int * inBuf; TYPE_3__* mtDec; } ;
typedef TYPE_2__ CMtDecThread ;
typedef TYPE_3__ CMtDec ;


 int CriticalSection_Init (int *) ;
 int Event_Construct (int *) ;
 unsigned int MTDEC__THREADS_MAX ;
 int Thread_Construct (int *) ;

void MtDec_Construct(CMtDec *p)
{
  unsigned i;

  p->inBufSize = (size_t)1 << 18;

  p->numThreadsMax = 0;

  p->inStream = ((void*)0);




  p->crossBlock = ((void*)0);
  p->crossStart = 0;
  p->crossEnd = 0;

  p->numFilledThreads = 0;

  p->progress = ((void*)0);
  p->alloc = ((void*)0);

  p->mtCallback = ((void*)0);
  p->mtCallbackObject = ((void*)0);

  p->allocatedBufsSize = 0;

  for (i = 0; i < MTDEC__THREADS_MAX; i++)
  {
    CMtDecThread *t = &p->threads[i];
    t->mtDec = p;
    t->index = i;
    t->inBuf = ((void*)0);
    Event_Construct(&t->canRead);
    Event_Construct(&t->canWrite);
    Thread_Construct(&t->thread);
  }



  CriticalSection_Init(&p->mtProgress.cs);
}

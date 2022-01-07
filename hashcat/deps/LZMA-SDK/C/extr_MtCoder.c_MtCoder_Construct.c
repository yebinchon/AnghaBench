
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_5__ {int cs; } ;
struct TYPE_7__ {TYPE_1__ mtProgress; int cs; int finishedEvent; int * writeEvents; TYPE_2__* threads; int blocksSemaphore; int readEvent; scalar_t__ allocatedBufsSize; int * mtCallbackObject; int * mtCallback; int * allocBig; int * progress; scalar_t__ inDataSize; int * inData; int * inStream; scalar_t__ expectedDataSize; scalar_t__ numThreadsMax; scalar_t__ blockSize; } ;
struct TYPE_6__ {unsigned int index; int thread; int startEvent; int stop; int * inBuf; TYPE_3__* mtCoder; } ;
typedef scalar_t__ Int64 ;
typedef TYPE_2__ CMtCoderThread ;
typedef TYPE_3__ CMtCoder ;


 int CriticalSection_Init (int *) ;
 int Event_Construct (int *) ;
 int False ;
 unsigned int MTCODER__BLOCKS_MAX ;
 unsigned int MTCODER__THREADS_MAX ;
 int Semaphore_Construct (int *) ;
 int Thread_Construct (int *) ;

void MtCoder_Construct(CMtCoder *p)
{
  unsigned i;

  p->blockSize = 0;
  p->numThreadsMax = 0;
  p->expectedDataSize = (UInt64)(Int64)-1;

  p->inStream = ((void*)0);
  p->inData = ((void*)0);
  p->inDataSize = 0;

  p->progress = ((void*)0);
  p->allocBig = ((void*)0);

  p->mtCallback = ((void*)0);
  p->mtCallbackObject = ((void*)0);

  p->allocatedBufsSize = 0;

  Event_Construct(&p->readEvent);
  Semaphore_Construct(&p->blocksSemaphore);

  for (i = 0; i < MTCODER__THREADS_MAX; i++)
  {
    CMtCoderThread *t = &p->threads[i];
    t->mtCoder = p;
    t->index = i;
    t->inBuf = ((void*)0);
    t->stop = False;
    Event_Construct(&t->startEvent);
    Thread_Construct(&t->thread);
  }





    Event_Construct(&p->finishedEvent);


  CriticalSection_Init(&p->cs);
  CriticalSection_Init(&p->mtProgress.cs);
}

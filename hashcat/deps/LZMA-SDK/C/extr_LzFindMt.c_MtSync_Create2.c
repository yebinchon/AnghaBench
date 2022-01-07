
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {void* wasCreated; int thread; void* needStart; int filledSemaphore; int freeSemaphore; int wasStopped; int wasStarted; int canStart; void* csWasInitialized; int cs; } ;
typedef int THREAD_FUNC_TYPE ;
typedef int SRes ;
typedef TYPE_1__ CMtSync ;


 int AutoResetEvent_CreateNotSignaled (int *) ;
 int CriticalSection_Init (int *) ;
 int RINOK_THREAD (int ) ;
 int SZ_OK ;
 int Semaphore_Create (int *,int ,int ) ;
 int Thread_Create (int *,int ,void*) ;
 void* True ;

__attribute__((used)) static SRes MtSync_Create2(CMtSync *p, THREAD_FUNC_TYPE startAddress, void *obj, UInt32 numBlocks)
{
  if (p->wasCreated)
    return SZ_OK;

  RINOK_THREAD(CriticalSection_Init(&p->cs));
  p->csWasInitialized = True;

  RINOK_THREAD(AutoResetEvent_CreateNotSignaled(&p->canStart));
  RINOK_THREAD(AutoResetEvent_CreateNotSignaled(&p->wasStarted));
  RINOK_THREAD(AutoResetEvent_CreateNotSignaled(&p->wasStopped));

  RINOK_THREAD(Semaphore_Create(&p->freeSemaphore, numBlocks, numBlocks));
  RINOK_THREAD(Semaphore_Create(&p->filledSemaphore, 0, numBlocks));

  p->needStart = True;

  RINOK_THREAD(Thread_Create(&p->thread, startAddress, obj));
  p->wasCreated = True;
  return SZ_OK;
}

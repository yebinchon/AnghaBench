
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* wasCreated; int filledSemaphore; int freeSemaphore; int wasStopped; int wasStarted; int canStart; void* csWasInitialized; int cs; int thread; scalar_t__ needStart; int exit; } ;
typedef TYPE_1__ CMtSync ;


 int CriticalSection_Delete (int *) ;
 int Event_Close (int *) ;
 int Event_Set (int *) ;
 void* False ;
 int MtSync_StopWriting (TYPE_1__*) ;
 int Semaphore_Close (int *) ;
 int Thread_Close (int *) ;
 int Thread_Wait (int *) ;
 scalar_t__ Thread_WasCreated (int *) ;
 int True ;

__attribute__((used)) static void MtSync_Destruct(CMtSync *p)
{
  if (Thread_WasCreated(&p->thread))
  {
    MtSync_StopWriting(p);
    p->exit = True;
    if (p->needStart)
      Event_Set(&p->canStart);
    Thread_Wait(&p->thread);
    Thread_Close(&p->thread);
  }
  if (p->csWasInitialized)
  {
    CriticalSection_Delete(&p->cs);
    p->csWasInitialized = False;
  }

  Event_Close(&p->canStart);
  Event_Close(&p->wasStarted);
  Event_Close(&p->wasStopped);
  Semaphore_Close(&p->freeSemaphore);
  Semaphore_Close(&p->filledSemaphore);

  p->wasCreated = False;
}

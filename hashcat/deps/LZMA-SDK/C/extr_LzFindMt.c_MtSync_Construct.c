
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filledSemaphore; int freeSemaphore; int wasStopped; int wasStarted; int canStart; int thread; void* csWasEntered; void* csWasInitialized; void* wasCreated; } ;
typedef TYPE_1__ CMtSync ;


 int Event_Construct (int *) ;
 void* False ;
 int Semaphore_Construct (int *) ;
 int Thread_Construct (int *) ;

__attribute__((used)) static void MtSync_Construct(CMtSync *p)
{
  p->wasCreated = False;
  p->csWasInitialized = False;
  p->csWasEntered = False;
  Thread_Construct(&p->thread);
  Event_Construct(&p->canStart);
  Event_Construct(&p->wasStarted);
  Event_Construct(&p->wasStopped);
  Semaphore_Construct(&p->freeSemaphore);
  Semaphore_Construct(&p->filledSemaphore);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int canWrite; int canRead; int thread; } ;
typedef TYPE_1__ CMtDecThread ;


 int Event_Close (int *) ;
 int Event_Set (int *) ;
 int Thread_Close (int *) ;
 int Thread_Wait (int *) ;
 scalar_t__ Thread_WasCreated (int *) ;

__attribute__((used)) static void MtDecThread_CloseThread(CMtDecThread *t)
{
  if (Thread_WasCreated(&t->thread))
  {
    Event_Set(&t->canWrite);
    Event_Set(&t->canRead);
    Thread_Wait(&t->thread);
    Thread_Close(&t->thread);
  }

  Event_Close(&t->canRead);
  Event_Close(&t->canWrite);
}

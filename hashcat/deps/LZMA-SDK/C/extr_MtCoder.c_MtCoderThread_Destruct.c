
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int stop; int * inBuf; TYPE_1__* mtCoder; int startEvent; int thread; } ;
struct TYPE_4__ {int allocBig; } ;
typedef TYPE_2__ CMtCoderThread ;


 int Event_Close (int *) ;
 int Event_Set (int *) ;
 int ISzAlloc_Free (int ,int *) ;
 int Thread_Close (int *) ;
 int Thread_Wait (int *) ;
 scalar_t__ Thread_WasCreated (int *) ;

__attribute__((used)) static void MtCoderThread_Destruct(CMtCoderThread *t)
{
  if (Thread_WasCreated(&t->thread))
  {
    t->stop = 1;
    Event_Set(&t->startEvent);
    Thread_Wait(&t->thread);
    Thread_Close(&t->thread);
  }

  Event_Close(&t->startEvent);

  if (t->inBuf)
  {
    ISzAlloc_Free(t->mtCoder->allocBig, t->inBuf);
    t->inBuf = ((void*)0);
  }
}

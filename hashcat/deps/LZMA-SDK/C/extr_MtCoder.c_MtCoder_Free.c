
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int finishedEvent; int * writeEvents; int blocksSemaphore; int readEvent; int * threads; } ;
typedef TYPE_1__ CMtCoder ;


 int Event_Close (int *) ;
 unsigned int MTCODER__BLOCKS_MAX ;
 unsigned int MTCODER__THREADS_MAX ;
 int MtCoderThread_Destruct (int *) ;
 int Semaphore_Close (int *) ;

__attribute__((used)) static void MtCoder_Free(CMtCoder *p)
{
  unsigned i;







  for (i = 0; i < MTCODER__THREADS_MAX; i++)
    MtCoderThread_Destruct(&p->threads[i]);

  Event_Close(&p->readEvent);
  Semaphore_Close(&p->blocksSemaphore);





    Event_Close(&p->finishedEvent);

}

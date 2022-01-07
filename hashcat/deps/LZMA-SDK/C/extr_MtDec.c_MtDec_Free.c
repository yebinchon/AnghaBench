
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * crossBlock; int alloc; int * threads; int exitThread; } ;
typedef TYPE_1__ CMtDec ;


 int ISzAlloc_Free (int ,int *) ;
 unsigned int MTDEC__THREADS_MAX ;
 int MtDecThread_Destruct (int *) ;
 int True ;

__attribute__((used)) static void MtDec_Free(CMtDec *p)
{
  unsigned i;

  p->exitThread = True;

  for (i = 0; i < MTDEC__THREADS_MAX; i++)
    MtDecThread_Destruct(&p->threads[i]);



  if (p->crossBlock)
  {
    ISzAlloc_Free(p->alloc, p->crossBlock);
    p->crossBlock = ((void*)0);
  }
}

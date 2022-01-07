
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * threads; } ;
typedef TYPE_1__ CMtDec ;


 unsigned int MTDEC__THREADS_MAX ;
 int MtDecThread_CloseThread (int *) ;

__attribute__((used)) static void MtDec_CloseThreads(CMtDec *p)
{
  unsigned i;
  for (i = 0; i < MTDEC__THREADS_MAX; i++)
    MtDecThread_CloseThread(&p->threads[i]);
}

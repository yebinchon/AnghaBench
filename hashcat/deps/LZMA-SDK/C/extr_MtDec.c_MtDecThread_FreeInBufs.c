
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* next; } ;
struct TYPE_6__ {TYPE_1__* mtDec; int * inBuf; } ;
struct TYPE_5__ {int alloc; } ;
typedef TYPE_2__ CMtDecThread ;
typedef TYPE_3__ CMtDecBufLink ;


 int ISzAlloc_Free (int ,void*) ;

void MtDecThread_FreeInBufs(CMtDecThread *t)
{
  if (t->inBuf)
  {
    void *link = t->inBuf;
    t->inBuf = ((void*)0);
    do
    {
      void *next = ((CMtDecBufLink *)link)->next;
      ISzAlloc_Free(t->mtDec->alloc, link);
      link = next;
    }
    while (link);
  }
}

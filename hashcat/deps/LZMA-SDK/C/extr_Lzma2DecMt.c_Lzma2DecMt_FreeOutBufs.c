
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int allocMid; TYPE_1__* coders; } ;
struct TYPE_4__ {scalar_t__ outBufSize; int * outBuf; } ;
typedef TYPE_1__ CLzma2DecMtThread ;
typedef TYPE_2__ CLzma2DecMt ;


 int ISzAlloc_Free (int ,int *) ;
 unsigned int MTDEC__THREADS_MAX ;

__attribute__((used)) static void Lzma2DecMt_FreeOutBufs(CLzma2DecMt *p)
{
  unsigned i;
  for (i = 0; i < MTDEC__THREADS_MAX; i++)
  {
    CLzma2DecMtThread *t = &p->coders[i];
    if (t->outBuf)
    {
      ISzAlloc_Free(p->allocMid, t->outBuf);
      t->outBuf = ((void*)0);
      t->outBufSize = 0;
    }
  }
}

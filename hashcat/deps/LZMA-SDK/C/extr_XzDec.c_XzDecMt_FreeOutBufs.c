
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ unpackBlockMaxSize; int allocMid; TYPE_1__* coders; } ;
struct TYPE_4__ {scalar_t__ outBufSize; int * outBuf; } ;
typedef TYPE_1__ CXzDecMtThread ;
typedef TYPE_2__ CXzDecMt ;


 int ISzAlloc_Free (int ,int *) ;
 unsigned int MTDEC__THREADS_MAX ;

__attribute__((used)) static void XzDecMt_FreeOutBufs(CXzDecMt *p)
{
  unsigned i;
  for (i = 0; i < MTDEC__THREADS_MAX; i++)
  {
    CXzDecMtThread *coder = &p->coders[i];
    if (coder->outBuf)
    {
      ISzAlloc_Free(p->allocMid, coder->outBuf);
      coder->outBuf = ((void*)0);
      coder->outBufSize = 0;
    }
  }
  p->unpackBlockMaxSize = 0;
}

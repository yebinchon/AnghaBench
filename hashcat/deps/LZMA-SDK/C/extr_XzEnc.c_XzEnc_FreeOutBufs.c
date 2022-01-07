
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ outBufSize; int ** outBufs; int alloc; } ;
typedef TYPE_1__ CXzEnc ;


 int ISzAlloc_Free (int ,int *) ;
 unsigned int MTCODER__BLOCKS_MAX ;

__attribute__((used)) static void XzEnc_FreeOutBufs(CXzEnc *p)
{
  unsigned i;
  for (i = 0; i < MTCODER__BLOCKS_MAX; i++)
    if (p->outBufs[i])
    {
      ISzAlloc_Free(p->alloc, p->outBufs[i]);
      p->outBufs[i] = ((void*)0);
    }
  p->outBufSize = 0;
}

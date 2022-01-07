
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ inBufSize; int * inBuf; int allocMid; scalar_t__ outBufSize; int * outBuf; int dec; } ;
typedef TYPE_1__ CXzDecMt ;


 int ISzAlloc_Free (int ,int *) ;
 int XzUnpacker_Free (int *) ;

__attribute__((used)) static void XzDecMt_FreeSt(CXzDecMt *p)
{
  XzUnpacker_Free(&p->dec);

  if (p->outBuf)
  {
    ISzAlloc_Free(p->allocMid, p->outBuf);
    p->outBuf = ((void*)0);
  }
  p->outBufSize = 0;

  if (p->inBuf)
  {
    ISzAlloc_Free(p->allocMid, p->inBuf);
    p->inBuf = ((void*)0);
  }
  p->inBufSize = 0;
}

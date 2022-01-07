
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vt; } ;
struct TYPE_5__ {scalar_t__ inBufSize; int * inBuf; int allocMid; scalar_t__ dec_created; TYPE_1__ alignOffsetAlloc; int dec; } ;
typedef TYPE_2__ CLzma2DecMt ;


 scalar_t__ False ;
 int ISzAlloc_Free (int ,int *) ;
 int Lzma2Dec_Free (int *,int *) ;

__attribute__((used)) static void Lzma2DecMt_FreeSt(CLzma2DecMt *p)
{
  if (p->dec_created)
  {
    Lzma2Dec_Free(&p->dec, &p->alignOffsetAlloc.vt);
    p->dec_created = False;
  }
  if (p->inBuf)
  {
    ISzAlloc_Free(p->allocMid, p->inBuf);
    p->inBuf = ((void*)0);
  }
  p->inBufSize = 0;
}

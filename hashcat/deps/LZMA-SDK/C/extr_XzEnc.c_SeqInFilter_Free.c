
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p; int (* Free ) (int *,int ) ;} ;
struct TYPE_5__ {int * buf; TYPE_1__ StateCoder; } ;
typedef int ISzAllocPtr ;
typedef TYPE_2__ CSeqInFilter ;


 int ISzAlloc_Free (int ,int *) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void SeqInFilter_Free(CSeqInFilter *p, ISzAllocPtr alloc)
{
  if (p->StateCoder.p)
  {
    p->StateCoder.Free(p->StateCoder.p, alloc);
    p->StateCoder.p = ((void*)0);
  }
  if (p->buf)
  {
    ISzAlloc_Free(alloc, p->buf);
    p->buf = ((void*)0);
  }
}

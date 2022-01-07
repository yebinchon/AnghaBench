
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ outBufSize; int * outBuf; int decoder; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzUnpacker ;


 int MixCoder_Construct (int *,int ) ;
 int XzUnpacker_Init (TYPE_1__*) ;

void XzUnpacker_Construct(CXzUnpacker *p, ISzAllocPtr alloc)
{
  MixCoder_Construct(&p->decoder, alloc);
  p->outBuf = ((void*)0);
  p->outBufSize = 0;
  XzUnpacker_Init(p);
}

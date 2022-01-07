
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* coders; int * outBuf; scalar_t__ outBufSize; scalar_t__ numCoders; int * buf; int alloc; } ;
struct TYPE_4__ {int * p; } ;
typedef int ISzAllocPtr ;
typedef TYPE_2__ CMixCoder ;


 unsigned int MIXCODER_NUM_FILTERS_MAX ;

__attribute__((used)) static void MixCoder_Construct(CMixCoder *p, ISzAllocPtr alloc)
{
  unsigned i;
  p->alloc = alloc;
  p->buf = ((void*)0);
  p->numCoders = 0;

  p->outBufSize = 0;
  p->outBuf = ((void*)0);


  for (i = 0; i < MIXCODER_NUM_FILTERS_MAX; i++)
    p->coders[i].p = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * buf; int alloc; TYPE_1__* coders; scalar_t__ numCoders; } ;
struct TYPE_4__ {int * p; int (* Free ) (int *,int ) ;} ;
typedef TYPE_1__ IStateCoder ;
typedef TYPE_2__ CMixCoder ;


 int ISzAlloc_Free (int ,int *) ;
 unsigned int MIXCODER_NUM_FILTERS_MAX ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void MixCoder_Free(CMixCoder *p)
{
  unsigned i;
  p->numCoders = 0;
  for (i = 0; i < MIXCODER_NUM_FILTERS_MAX; i++)
  {
    IStateCoder *sc = &p->coders[i];
    if (sc->p)
    {
      sc->Free(sc->p, p->alloc);
      sc->p = ((void*)0);
    }
  }
  if (p->buf)
  {
    ISzAlloc_Free(p->alloc, p->buf);
    p->buf = ((void*)0);
  }
}

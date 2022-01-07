
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {unsigned int numCoders; scalar_t__* ids; size_t outBufSize; int alloc; TYPE_1__* coders; int * outBuf; } ;
struct TYPE_14__ {TYPE_2__* filters; } ;
struct TYPE_13__ {scalar_t__ id; int propsSize; int props; } ;
struct TYPE_12__ {int p; int (* SetProps ) (int ,int ,int ,int ) ;} ;
typedef int SRes ;
typedef TYPE_1__ IStateCoder ;
typedef TYPE_2__ CXzFilter ;
typedef TYPE_3__ CXzBlock ;
typedef TYPE_4__ CMixCoder ;
typedef int Byte ;
typedef scalar_t__ BoolInt ;


 scalar_t__ False ;
 int MixCoder_Free (TYPE_4__*) ;
 int MixCoder_Init (TYPE_4__*) ;
 int MixCoder_ResetFromMethod (TYPE_4__*,int ,scalar_t__,int *,size_t) ;
 int MixCoder_SetFromMethod (TYPE_4__*,unsigned int,scalar_t__,int *,size_t) ;
 int RINOK (int ) ;
 int SZ_OK ;
 scalar_t__ True ;
 unsigned int XzBlock_GetNumFilters (TYPE_3__ const*) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static SRes XzDecMix_Init(CMixCoder *p, const CXzBlock *block, Byte *outBuf, size_t outBufSize)
{
  unsigned i;
  BoolInt needReInit = True;
  unsigned numFilters = XzBlock_GetNumFilters(block);

  if (numFilters == p->numCoders && ((p->outBuf && outBuf) || (!p->outBuf && !outBuf)))
  {
    needReInit = False;
    for (i = 0; i < numFilters; i++)
      if (p->ids[i] != block->filters[numFilters - 1 - i].id)
      {
        needReInit = True;
        break;
      }
  }


  p->outBuf = outBuf;
  p->outBufSize = outBufSize;




  if (needReInit)
  {
    MixCoder_Free(p);
    for (i = 0; i < numFilters; i++)
    {
      RINOK(MixCoder_SetFromMethod(p, i, block->filters[numFilters - 1 - i].id, outBuf, outBufSize));
    }
    p->numCoders = numFilters;
  }
  else
  {
    RINOK(MixCoder_ResetFromMethod(p, 0, block->filters[numFilters - 1].id, outBuf, outBufSize));
  }

  for (i = 0; i < numFilters; i++)
  {
    const CXzFilter *f = &block->filters[numFilters - 1 - i];
    IStateCoder *sc = &p->coders[i];
    RINOK(sc->SetProps(sc->p, f->props, f->propsSize, p->alloc));
  }

  MixCoder_Init(p);
  return SZ_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int p; int (* Init ) (int ) ;int (* SetProps ) (int ,int ,int ,int ) ;} ;
struct TYPE_7__ {TYPE_5__ StateCoder; scalar_t__ srcWasFinished; scalar_t__ endPos; scalar_t__ curPos; int * buf; } ;
struct TYPE_6__ {int propsSize; int props; int id; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzFilter ;
typedef TYPE_2__ CSeqInFilter ;
typedef int Byte ;


 int BraState_SetFromMethod (TYPE_5__*,int ,int,int ) ;
 int FILTER_BUF_SIZE ;
 scalar_t__ ISzAlloc_Alloc (int ,int ) ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ) ;

__attribute__((used)) static SRes SeqInFilter_Init(CSeqInFilter *p, const CXzFilter *props, ISzAllocPtr alloc)
{
  if (!p->buf)
  {
    p->buf = (Byte *)ISzAlloc_Alloc(alloc, FILTER_BUF_SIZE);
    if (!p->buf)
      return SZ_ERROR_MEM;
  }
  p->curPos = p->endPos = 0;
  p->srcWasFinished = 0;
  RINOK(BraState_SetFromMethod(&p->StateCoder, props->id, 1, alloc));
  RINOK(p->StateCoder.SetProps(p->StateCoder.p, props->props, props->propsSize, alloc));
  p->StateCoder.Init(p->StateCoder.p);
  return SZ_OK;
}

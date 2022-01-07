
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ inBufSize_ST; } ;
struct TYPE_5__ {int vt; } ;
struct TYPE_7__ {scalar_t__ inBufSize; int dec; TYPE_2__ props; int * inBuf; int allocMid; TYPE_1__ alignOffsetAlloc; int prop; scalar_t__ dec_created; } ;
typedef int SRes ;
typedef TYPE_3__ CLzma2DecMt ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,scalar_t__) ;
 int ISzAlloc_Free (int ,int *) ;
 int Lzma2Dec_Allocate (int *,int ,int *) ;
 int Lzma2Dec_Construct (int *) ;
 int Lzma2Dec_Init (int *) ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ True ;

__attribute__((used)) static SRes Lzma2Dec_Prepare_ST(CLzma2DecMt *p)
{
  if (!p->dec_created)
  {
    Lzma2Dec_Construct(&p->dec);
    p->dec_created = True;
  }

  RINOK(Lzma2Dec_Allocate(&p->dec, p->prop, &p->alignOffsetAlloc.vt));

  if (!p->inBuf || p->inBufSize != p->props.inBufSize_ST)
  {
    ISzAlloc_Free(p->allocMid, p->inBuf);
    p->inBufSize = 0;
    p->inBuf = (Byte *)ISzAlloc_Alloc(p->allocMid, p->props.inBufSize_ST);
    if (!p->inBuf)
      return SZ_ERROR_MEM;
    p->inBufSize = p->props.inBufSize_ST;
  }

  Lzma2Dec_Init(&p->dec);

  return SZ_OK;
}

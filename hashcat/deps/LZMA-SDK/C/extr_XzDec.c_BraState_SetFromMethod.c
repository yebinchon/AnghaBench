
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef scalar_t__ UInt32 ;
struct TYPE_5__ {int encodeMode; scalar_t__ methodId; } ;
struct TYPE_4__ {int Filter; int Code2; int Init; int SetProps; int Free; TYPE_2__* p; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ IStateCoder ;
typedef TYPE_2__ CBraState ;


 int BraState_Code2 ;
 int BraState_Filter ;
 int BraState_Free ;
 int BraState_Init ;
 int BraState_SetProps ;
 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int SZ_ERROR_MEM ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 scalar_t__ XZ_ID_Delta ;
 scalar_t__ XZ_ID_SPARC ;

SRes BraState_SetFromMethod(IStateCoder *p, UInt64 id, int encodeMode, ISzAllocPtr alloc)
{
  CBraState *decoder;
  if (id < XZ_ID_Delta || id > XZ_ID_SPARC)
    return SZ_ERROR_UNSUPPORTED;
  decoder = (CBraState *)p->p;
  if (!decoder)
  {
    decoder = (CBraState *)ISzAlloc_Alloc(alloc, sizeof(CBraState));
    if (!decoder)
      return SZ_ERROR_MEM;
    p->p = decoder;
    p->Free = BraState_Free;
    p->SetProps = BraState_SetProps;
    p->Init = BraState_Init;
    p->Code2 = BraState_Code2;
    p->Filter = BraState_Filter;
  }
  decoder->methodId = (UInt32)id;
  decoder->encodeMode = encodeMode;
  return SZ_OK;
}

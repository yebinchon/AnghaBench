
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * crossBlock; scalar_t__ inBufSize; int alloc; } ;
typedef TYPE_1__ CMtDec ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,scalar_t__) ;
 int * MTDEC__DATA_PTR_FROM_LINK (int *) ;
 scalar_t__ MTDEC__LINK_DATA_OFFSET ;

Byte *MtDec_GetCrossBuff(CMtDec *p)
{
  Byte *cr = p->crossBlock;
  if (!cr)
  {
    cr = (Byte *)ISzAlloc_Alloc(p->alloc, MTDEC__LINK_DATA_OFFSET + p->inBufSize);
    if (!cr)
      return ((void*)0);
    p->crossBlock = cr;
  }
  return MTDEC__DATA_PTR_FROM_LINK(cr);
}

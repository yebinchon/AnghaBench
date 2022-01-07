
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Vals; int * Defs; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CSzBitUi32s ;


 int ISzAlloc_Free (int ,int *) ;

void SzBitUi32s_Free(CSzBitUi32s *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->Defs); p->Defs = ((void*)0);
  ISzAlloc_Free(alloc, p->Vals); p->Vals = ((void*)0);
}

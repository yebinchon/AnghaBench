
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Base; scalar_t__ Size; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CPpmd7 ;


 int ISzAlloc_Free (int ,scalar_t__) ;

void Ppmd7_Free(CPpmd7 *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->Base);
  p->Size = 0;
  p->Base = 0;
}

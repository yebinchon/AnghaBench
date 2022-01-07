
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bufBase; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CRangeEnc ;


 int ISzAlloc_Free (int ,scalar_t__) ;

__attribute__((used)) static void RangeEnc_Free(CRangeEnc *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->bufBase);
  p->bufBase = 0;
}

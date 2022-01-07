
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bufBase; int * bufLim; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CRangeEnc ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int RC_BUF_SIZE ;

__attribute__((used)) static int RangeEnc_Alloc(CRangeEnc *p, ISzAllocPtr alloc)
{
  if (!p->bufBase)
  {
    p->bufBase = (Byte *)ISzAlloc_Alloc(alloc, RC_BUF_SIZE);
    if (!p->bufBase)
      return 0;
    p->bufLim = p->bufBase + RC_BUF_SIZE;
  }
  return 1;
}

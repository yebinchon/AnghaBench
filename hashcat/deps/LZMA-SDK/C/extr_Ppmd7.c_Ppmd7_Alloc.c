
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int Size; int AlignOffset; int * Base; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CPpmd7 ;
typedef int Byte ;
typedef int BoolInt ;


 int False ;
 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int Ppmd7_Free (TYPE_1__*,int ) ;
 int True ;
 int UNIT_SIZE ;

BoolInt Ppmd7_Alloc(CPpmd7 *p, UInt32 size, ISzAllocPtr alloc)
{
  if (!p->Base || p->Size != size)
  {
    size_t size2;
    Ppmd7_Free(p, alloc);
    size2 = 0

      + UNIT_SIZE

      ;
    p->AlignOffset =



        4 - (size & 3);

    if ((p->Base = (Byte *)ISzAlloc_Alloc(alloc, p->AlignOffset + size + size2)) == 0)
      return False;
    p->Size = size;
  }
  return True;
}

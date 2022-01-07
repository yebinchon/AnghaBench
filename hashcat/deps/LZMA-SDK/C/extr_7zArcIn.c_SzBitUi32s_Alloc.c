
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Vals; int * Defs; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CSzBitUi32s ;


 int Byte ;
 int MY_ALLOC (int ,int *,size_t,int ) ;
 int SZ_OK ;
 int UInt32 ;

__attribute__((used)) static SRes SzBitUi32s_Alloc(CSzBitUi32s *p, size_t num, ISzAllocPtr alloc)
{
  if (num == 0)
  {
    p->Defs = ((void*)0);
    p->Vals = ((void*)0);
  }
  else
  {
    MY_ALLOC(Byte, p->Defs, (num + 7) >> 3, alloc);
    MY_ALLOC(UInt32, p->Vals, num, alloc);
  }
  return SZ_OK;
}

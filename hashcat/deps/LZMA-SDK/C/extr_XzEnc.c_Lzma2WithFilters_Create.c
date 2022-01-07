
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lzma2; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzma2WithFilters ;


 scalar_t__ Lzma2Enc_Create (int ,int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;

__attribute__((used)) static SRes Lzma2WithFilters_Create(CLzma2WithFilters *p, ISzAllocPtr alloc, ISzAllocPtr bigAlloc)
{
  if (!p->lzma2)
  {
    p->lzma2 = Lzma2Enc_Create(alloc, bigAlloc);
    if (!p->lzma2)
      return SZ_ERROR_MEM;
  }
  return SZ_OK;
}

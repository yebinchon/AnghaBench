
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t allocated; int * blocks; int size; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzEncIndex ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 int ISzAlloc_Free (int ,int *) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static SRes XzEncIndex_ReAlloc(CXzEncIndex *p, size_t newSize, ISzAllocPtr alloc)
{
  Byte *blocks = (Byte *)ISzAlloc_Alloc(alloc, newSize);
  if (!blocks)
    return SZ_ERROR_MEM;
  if (p->size != 0)
    memcpy(blocks, p->blocks, p->size);
  if (p->blocks)
    ISzAlloc_Free(alloc, p->blocks);
  p->blocks = blocks;
  p->allocated = newSize;
  return SZ_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int UInt64 ;
struct TYPE_4__ {unsigned int allocated; unsigned int size; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzEncIndex ;
typedef int Byte ;


 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int XzEncIndex_ReAlloc (TYPE_1__*,size_t,int ) ;
 unsigned int Xz_WriteVarInt (int *,unsigned int) ;

__attribute__((used)) static SRes XzEncIndex_PreAlloc(CXzEncIndex *p, UInt64 numBlocks, UInt64 unpackSize, UInt64 totalSize, ISzAllocPtr alloc)
{
  UInt64 pos;
  {
    Byte buf[32];
    unsigned pos2 = Xz_WriteVarInt(buf, totalSize);
    pos2 += Xz_WriteVarInt(buf + pos2, unpackSize);
    pos = numBlocks * pos2;
  }

  if (pos <= p->allocated - p->size)
    return SZ_OK;
  {
    UInt64 newSize64 = p->size + pos;
    size_t newSize = (size_t)newSize64;
    if (newSize != newSize64)
      return SZ_ERROR_MEM;
    return XzEncIndex_ReAlloc(p, newSize, alloc);
  }
}

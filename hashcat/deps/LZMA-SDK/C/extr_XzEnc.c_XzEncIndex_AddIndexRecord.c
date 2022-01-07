
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_4__ {unsigned int allocated; unsigned int size; unsigned int blocks; int numBlocks; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzEncIndex ;
typedef int Byte ;


 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int XzEncIndex_ReAlloc (TYPE_1__*,size_t,int ) ;
 unsigned int Xz_WriteVarInt (int *,int ) ;
 int memcpy (unsigned int,int *,unsigned int) ;

__attribute__((used)) static SRes XzEncIndex_AddIndexRecord(CXzEncIndex *p, UInt64 unpackSize, UInt64 totalSize, ISzAllocPtr alloc)
{
  Byte buf[32];
  unsigned pos = Xz_WriteVarInt(buf, totalSize);
  pos += Xz_WriteVarInt(buf + pos, unpackSize);

  if (pos > p->allocated - p->size)
  {
    size_t newSize = p->allocated * 2 + 16 * 2;
    if (newSize < p->size + pos)
      return SZ_ERROR_MEM;
    RINOK(XzEncIndex_ReAlloc(p, newSize, alloc));
  }
  memcpy(p->blocks + p->size, buf, pos);
  p->size += pos;
  p->numBlocks++;
  return SZ_OK;
}

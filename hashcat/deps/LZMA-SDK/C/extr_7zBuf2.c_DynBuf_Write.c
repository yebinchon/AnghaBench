
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; size_t pos; int const* data; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CDynBuf ;
typedef int const Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 int ISzAlloc_Free (int ,int const*) ;
 int memcpy (int const*,int const*,size_t) ;

int DynBuf_Write(CDynBuf *p, const Byte *buf, size_t size, ISzAllocPtr alloc)
{
  if (size > p->size - p->pos)
  {
    size_t newSize = p->pos + size;
    Byte *data;
    newSize += newSize / 4;
    data = (Byte *)ISzAlloc_Alloc(alloc, newSize);
    if (!data)
      return 0;
    p->size = newSize;
    if (p->pos != 0)
      memcpy(data, p->data, p->pos);
    ISzAlloc_Free(alloc, p->data);
    p->data = data;
  }
  if (size != 0)
  {
    memcpy(p->data + p->pos, buf, size);
    p->pos += size;
  }
  return 1;
}

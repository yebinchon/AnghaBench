
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_5__ {size_t numBlocks; TYPE_1__* blocks; } ;
struct TYPE_4__ {int unpackSize; } ;
typedef TYPE_2__ CXzStream ;


 int ADD_SIZE_CHECK (int ,int ) ;

UInt64 Xz_GetUnpackSize(const CXzStream *p)
{
  UInt64 size = 0;
  size_t i;
  for (i = 0; i < p->numBlocks; i++)
    ADD_SIZE_CHECK(size, p->blocks[i].unpackSize);
  return size;
}

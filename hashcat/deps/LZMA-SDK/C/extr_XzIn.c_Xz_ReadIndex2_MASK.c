#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UInt64 ;
typedef  scalar_t__ UInt32 ;
struct TYPE_6__ {size_t totalSize; size_t unpackSize; } ;
struct TYPE_5__ {size_t numBlocks; TYPE_2__* blocks; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CXzStream ;
typedef  TYPE_2__ CXzBlockSizes ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*,size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  SZ_ERROR_ARCHIVE ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC5(CXzStream *p, const Byte *buf, size_t size, ISzAllocPtr alloc)
{
  size_t numBlocks, pos = 1;
  UInt32 crc;

  if (size < 5 || buf[0] != 0)
    return SZ_ERROR_ARCHIVE;

  size -= 4;
  crc = FUNC0(buf, size);
  if (crc != FUNC1(buf + size))
    return SZ_ERROR_ARCHIVE;

  {
    UInt64 numBlocks64;
    FUNC3(buf, pos, size, &numBlocks64);
    numBlocks = (size_t)numBlocks64;
    if (numBlocks != numBlocks64 || numBlocks * 2 > size)
      return SZ_ERROR_ARCHIVE;
  }
  
  FUNC4(p, alloc);
  if (numBlocks != 0)
  {
    size_t i;
    p->numBlocks = numBlocks;
    p->blocks = (CXzBlockSizes *)FUNC2(alloc, sizeof(CXzBlockSizes) * numBlocks);
    if (!p->blocks)
      return SZ_ERROR_MEM;
    for (i = 0; i < numBlocks; i++)
    {
      CXzBlockSizes *block = &p->blocks[i];
      FUNC3(buf, pos, size, &block->totalSize);
      FUNC3(buf, pos, size, &block->unpackSize);
      if (block->totalSize == 0)
        return SZ_ERROR_ARCHIVE;
    }
  }
  while ((pos & 3) != 0)
    if (buf[pos++] != 0)
      return SZ_ERROR_ARCHIVE;
  return (pos == size) ? SZ_OK : SZ_ERROR_ARCHIVE;
}
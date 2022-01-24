#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt64 ;
struct TYPE_4__ {unsigned int allocated; unsigned int size; unsigned int blocks; int /*<<< orphan*/  numBlocks; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CXzEncIndex ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static SRes FUNC4(CXzEncIndex *p, UInt64 unpackSize, UInt64 totalSize, ISzAllocPtr alloc)
{
  Byte buf[32];
  unsigned pos = FUNC2(buf, totalSize);
  pos += FUNC2(buf + pos, unpackSize);

  if (pos > p->allocated - p->size)
  {
    size_t newSize = p->allocated * 2 + 16 * 2;
    if (newSize < p->size + pos)
      return SZ_ERROR_MEM;
    FUNC0(FUNC1(p, newSize, alloc));
  }
  FUNC3(p->blocks + p->size, buf, pos);
  p->size += pos;
  p->numBlocks++;
  return SZ_OK;
}
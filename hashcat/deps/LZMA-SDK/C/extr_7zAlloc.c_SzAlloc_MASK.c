#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ISzAllocPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int g_allocCount ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC3(ISzAllocPtr p, size_t size)
{
  FUNC0(p);
  if (size == 0)
    return 0;
  #ifdef _SZ_ALLOC_DEBUG
  fprintf(stderr, "\nAlloc %10u bytes; count = %10d", (unsigned)size, g_allocCount);
  g_allocCount++;
  #endif
  return FUNC2(size);
}
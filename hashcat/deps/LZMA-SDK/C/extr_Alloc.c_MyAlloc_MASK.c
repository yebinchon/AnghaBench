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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/  g_allocCount ; 
 void* FUNC1 (size_t) ; 

void *FUNC2(size_t size)
{
  if (size == 0)
    return NULL;
  #ifdef _SZ_ALLOC_DEBUG
  {
    void *p = malloc(size);
    PRINT_ALLOC("Alloc    ", g_allocCount, size, p);
    return p;
  }
  #else
  return FUNC1(size);
  #endif
}
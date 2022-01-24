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
 int MAX_ZMALLOC_MEM ; 
 int /*<<< orphan*/  PTRSIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 void* FUNC4 (int) ; 
 int malloc_mem ; 
 scalar_t__ max_memory ; 

void *FUNC5 (int size) {
  void *res;

  while (FUNC3() > max_memory && FUNC2() == 0) {
  }

  FUNC0 (FUNC3() <= max_memory);

  if (size < MAX_ZMALLOC_MEM)
  {
    while (!(res = FUNC1 (size, PTRSIZE)) && FUNC2() == 0) {
    }
  } else {
    while (!(res = FUNC4 (size)) && FUNC2() == 0) {
    }
    malloc_mem += size;
  }

  FUNC0 (res);
  return res;
}
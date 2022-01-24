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
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  cache_size ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry_memory ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  init_memory ; 
 void* FUNC4 (int) ; 
 int malloc_mem ; 
 scalar_t__ max_memory ; 
 int /*<<< orphan*/  stderr ; 
 int zalloc_mem ; 

void *FUNC5 (int size) {
  if (size<0) return 0;
  void *res;

  if (FUNC3() > max_memory) {
    FUNC2 (stderr, "Out of memory\n");
  }

  if (FUNC3 () > max_memory) {
    FUNC2 (stderr, "too much memory used: %lld of %lld\n", (long long) FUNC3 (), (long long) max_memory);
    FUNC2 (stderr, "memory distributes as follow: %d to current, %d to cache, %d to metafiles, %d to init data\n", entry_memory, cache_size, allocated_metafile_bytes, init_memory);
  }
  FUNC0 (FUNC3() <= max_memory);

  if (size < MAX_ZMALLOC_MEM) {
    if (!(res = FUNC1 (size, PTRSIZE))) {
      FUNC2 (stderr, "Out of memory\n");
    }
    FUNC0 (res);      
    zalloc_mem += size;
  } else {
    if (!(res = FUNC4 (size))) {
      FUNC2 (stderr, "Out of memory\n");
    }
    FUNC0 (res);      
    malloc_mem += size;
  }

  FUNC0(res);
  return res;
}
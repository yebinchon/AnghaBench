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
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int ERROR_OUTOFMEMORY ; 
 size_t UV__LOOPS_CHUNK_SIZE ; 
 int /*<<< orphan*/ ** uv__loops ; 
 size_t uv__loops_capacity ; 
 int /*<<< orphan*/  uv__loops_lock ; 
 size_t uv__loops_size ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(uv_loop_t* loop) {
  uv_loop_t** new_loops;
  int new_capacity, i;

  FUNC1(&uv__loops_lock);

  if (uv__loops_size == uv__loops_capacity) {
    new_capacity = uv__loops_capacity + UV__LOOPS_CHUNK_SIZE;
    new_loops = FUNC0(uv__loops, sizeof(uv_loop_t*) * new_capacity);
    if (!new_loops)
      goto failed_loops_realloc;
    uv__loops = new_loops;
    for (i = uv__loops_capacity; i < new_capacity; ++i)
      uv__loops[i] = NULL;
    uv__loops_capacity = new_capacity;
  }
  uv__loops[uv__loops_size] = loop;
  ++uv__loops_size;

  FUNC2(&uv__loops_lock);
  return 0;

failed_loops_realloc:
  FUNC2(&uv__loops_lock);
  return ERROR_OUTOFMEMORY;
}
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
 int MAX_ZALLOC ; 
 void* FUNC0 (int,int) ; 
 int size_sum_zzmallocs ; 
 int /*<<< orphan*/  tot_calls_zzmallocs ; 
 int total_memory_used ; 
 void* FUNC1 (int) ; 

void *FUNC2 (int size) {
  #ifdef DEBUG_ZZMALLOC
  size_sum_zzmallocs += size;
  tot_calls_zzmallocs++;
  #endif
  if (size < MAX_ZALLOC) {
    return FUNC1 (size);
  } else {
    total_memory_used += size;
    return FUNC0 (size, 1);
  }
}
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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int tot_memory_allocated ; 
 void* FUNC2 (int) ; 

void *FUNC3 (int l) {
  void *t;
  if (l < MAX_ZALLOC) {
    t = FUNC2 (l);
  } else {
    t = FUNC1 (l);
    FUNC0 (t);
  }
  if (t) {
    tot_memory_allocated += l;
  }
  return t;
}
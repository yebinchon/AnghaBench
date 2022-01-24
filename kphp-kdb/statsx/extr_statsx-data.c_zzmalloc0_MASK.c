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
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int tot_memory_allocated ; 
 void* FUNC3 (int) ; 

void *FUNC4 (int l) {
  void *t;
  if (l < MAX_ZALLOC) {
    t = FUNC3 (l);
  } else {
    t = FUNC1 (l);
    FUNC0 (t);
    FUNC2 (t, 0, l);
  }
  if (t) {
    tot_memory_allocated += l;
  }
  return t;
}
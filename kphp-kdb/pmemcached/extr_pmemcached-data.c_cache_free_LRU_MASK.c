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
 int HASH_TABLE_SIZE ; 
 int* cache_prev_use ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1 (void) {
  int e = HASH_TABLE_SIZE;
  if (cache_prev_use[e] == e) {
    return 0;
  }
  FUNC0 (cache_prev_use[e]);
  return 1;
}
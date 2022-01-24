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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ idx_rptr ; 
 scalar_t__ idx_wptr ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3 (void) {
  if (FUNC2 (idx_rptr + 4 > idx_wptr)) {
    FUNC0 (FUNC1 (4) >= 4);
  }
  int x = *((int *) idx_rptr);
  idx_rptr += 4;
  return x;
}
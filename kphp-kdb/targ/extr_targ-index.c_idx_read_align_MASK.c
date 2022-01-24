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
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int idx_rptr ; 

void FUNC3 (int alignment) {
  int to_skip = -FUNC1() & (alignment - 1);
  if (to_skip > 0) {
    FUNC0 (FUNC2 (to_skip) >= to_skip);
    idx_rptr += to_skip;
  }
}
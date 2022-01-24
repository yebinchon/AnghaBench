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
typedef  int /*<<< orphan*/  subscribers ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  subscribers_cnt ; 
 int /*<<< orphan*/  subscribers_memory ; 

subscribers *FUNC2 (void) {
  subscribers_cnt++;

  subscribers_memory -= FUNC0();
  subscribers *res = FUNC1 (sizeof (subscribers));
  subscribers_memory += FUNC0();

  return res;
}
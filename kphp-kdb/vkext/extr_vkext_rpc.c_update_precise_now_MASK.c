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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int precise_now ; 
 long long precise_now_ticks ; 
 int /*<<< orphan*/  precise_now_updates ; 
 long long FUNC2 () ; 

void FUNC3 () {
  long long x = FUNC2 ();
  if (x - precise_now_ticks > 1000000) {
    FUNC0 (precise_now_updates);
    precise_now_ticks = x;
    precise_now = FUNC1 ();
  } else {
    precise_now += 1e-6;
  }
}
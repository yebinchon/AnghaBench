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
 int* ES ; 
 int MAX_EXTRA_INTS ; 
 int* SE ; 
 int current_extra_mask ; 
 int extra_ints_num ; 
 int final_extra_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int text_shift ; 
 int FUNC1 (int) ; 
 scalar_t__ verbosity ; 

void FUNC2 (void) {
  int i, unpacked_mask;
  final_extra_mask = current_extra_mask;
  extra_ints_num = 0;

  unpacked_mask = FUNC1 (final_extra_mask);
  for (i = 0; i < MAX_EXTRA_INTS; i++) {
    SE[i] = ES[i] = -1;
    if (unpacked_mask & (1 << i)) {
      SE[i] = extra_ints_num;
      ES[extra_ints_num++] = i;
    }
  }
  text_shift = extra_ints_num * 4;
  if (verbosity > 0) {
    FUNC0 (stderr, "extra_mask=%08x, extra_ints=%d\n", final_extra_mask, extra_ints_num);
  }
}
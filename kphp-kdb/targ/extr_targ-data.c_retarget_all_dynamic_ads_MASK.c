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
 int /*<<< orphan*/  pending_signals ; 
 scalar_t__ FUNC0 () ; 

int FUNC1 (void) {
  int res = 0;
  while (FUNC0 () > 0 && !pending_signals) {
    res++;
  }
  return res;
}
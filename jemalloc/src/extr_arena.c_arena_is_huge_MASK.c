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
 scalar_t__ huge_arena_ind ; 

bool
FUNC0(unsigned arena_ind) {
	if (huge_arena_ind == 0) {
		return false;
	}
	return (arena_ind == huge_arena_ind);
}
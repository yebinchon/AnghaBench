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
 scalar_t__ init_system_thp_mode ; 
 scalar_t__ opt_thp ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 scalar_t__ thp_mode_always ; 
 scalar_t__ thp_mode_default ; 
 scalar_t__ thp_mode_never ; 
 scalar_t__ thp_mode_not_supported ; 

void
FUNC3 (void *ptr, size_t size) {
	if (opt_thp == thp_mode_default || opt_thp == init_system_thp_mode) {
		return;
	}
	FUNC0(opt_thp != thp_mode_not_supported &&
	    init_system_thp_mode != thp_mode_not_supported);

	if (opt_thp == thp_mode_always
	    && init_system_thp_mode != thp_mode_never) {
		FUNC0(init_system_thp_mode == thp_mode_default);
		FUNC1(ptr, size);
	} else if (opt_thp == thp_mode_never) {
		FUNC0(init_system_thp_mode == thp_mode_default ||
		    init_system_thp_mode == thp_mode_always);
		FUNC2(ptr, size);
	}
}
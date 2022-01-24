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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * evsig_base_lock ; 

__attribute__((used)) static void
FUNC1(void)
{
#ifndef EVENT__DISABLE_THREAD_SUPPORT
	if (evsig_base_lock != NULL) {
		FUNC0(evsig_base_lock, 0);
		evsig_base_lock = NULL;
	}
#endif
	return;
}
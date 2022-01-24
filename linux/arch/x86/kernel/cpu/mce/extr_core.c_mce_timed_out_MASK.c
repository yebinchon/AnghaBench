#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {int tolerant; int /*<<< orphan*/  monarch_timeout; } ;

/* Variables and functions */
 scalar_t__ SPINUNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int cpu_missing ; 
 TYPE_1__ mca_cfg ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mce_panicked ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(u64 *t, const char *msg)
{
	/*
	 * The others already did panic for some reason.
	 * Bail out like in a timeout.
	 * rmb() to tell the compiler that system_state
	 * might have been modified by someone else.
	 */
	FUNC2();
	if (FUNC0(&mce_panicked))
		FUNC4();
	if (!mca_cfg.monarch_timeout)
		goto out;
	if ((s64)*t < SPINUNIT) {
		if (mca_cfg.tolerant <= 1)
			FUNC1(msg, NULL, NULL);
		cpu_missing = 1;
		return 1;
	}
	*t -= SPINUNIT;
out:
	FUNC3();
	return 0;
}
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
typedef  int u64 ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int memtrace_size ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(void *data, u64 val)
{
	u64 bytes;

	/*
	 * Don't attempt to do anything if size isn't aligned to a memory
	 * block or equal to zero.
	 */
	bytes = FUNC0();
	if (val & (bytes - 1)) {
		FUNC4("Value must be aligned with 0x%llx\n", bytes);
		return -EINVAL;
	}

	/* Re-add/online previously removed/offlined memory */
	if (memtrace_size) {
		if (FUNC3())
			return -EAGAIN;
	}

	if (!val)
		return 0;

	/* Offline and remove memory */
	if (FUNC2(val))
		return -EINVAL;

	if (FUNC1())
		return -EINVAL;

	memtrace_size = val;

	return 0;
}
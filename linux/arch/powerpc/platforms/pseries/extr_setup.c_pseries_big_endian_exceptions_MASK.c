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
 int /*<<< orphan*/  FUNC0 (long) ; 
 long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
	long rc;

	while (1) {
		rc = FUNC1();
		if (!FUNC0(rc))
			break;
		FUNC4(FUNC2(rc));
	}

	/*
	 * At this point it is unlikely panic() will get anything
	 * out to the user, since this is called very late in kexec
	 * but at least this will stop us from continuing on further
	 * and creating an even more difficult to debug situation.
	 *
	 * There is a known problem when kdump'ing, if cpus are offline
	 * the above call will fail. Rather than panicking again, keep
	 * going and hope the kdump kernel is also little endian, which
	 * it usually is.
	 */
	if (rc && !FUNC3())
		FUNC5("Could not enable big endian exceptions");
}
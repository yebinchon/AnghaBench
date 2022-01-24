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
 int APIC_EILVT_NR_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
	int offset;
	int ret;

	FUNC4();
	/* find the next free available EILVT entry, skip offset 0 */
	for (offset = 1; offset < APIC_EILVT_NR_MAX; offset++) {
		if (FUNC0(offset))
			break;
	}
	FUNC5();

	if (offset == APIC_EILVT_NR_MAX) {
		FUNC2("No EILVT entry available\n");
		return;
	}

	ret = FUNC7(offset);
	if (ret)
		goto out;

	if (!FUNC1())
		goto out;

	FUNC3("LVT offset %d assigned\n", offset);

	return;
out:
	FUNC4();
	FUNC6(offset);
	FUNC5();
	return;
}
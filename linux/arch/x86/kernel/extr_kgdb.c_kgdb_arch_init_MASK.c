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
 int /*<<< orphan*/  NMI_LOCAL ; 
 int /*<<< orphan*/  NMI_UNKNOWN ; 
 int /*<<< orphan*/  kgdb_nmi_handler ; 
 int /*<<< orphan*/  kgdb_notifier ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(void)
{
	int retval;

	retval = FUNC0(&kgdb_notifier);
	if (retval)
		goto out;

	retval = FUNC1(NMI_LOCAL, kgdb_nmi_handler,
					0, "kgdb");
	if (retval)
		goto out1;

	retval = FUNC1(NMI_UNKNOWN, kgdb_nmi_handler,
					0, "kgdb");

	if (retval)
		goto out2;

	return retval;

out2:
	FUNC3(NMI_LOCAL, "kgdb");
out1:
	FUNC2(&kgdb_notifier);
out:
	return retval;
}
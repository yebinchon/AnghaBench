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
 int /*<<< orphan*/  H_INT_RESET ; 
 scalar_t__ FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 

__attribute__((used)) static long FUNC3(unsigned long flags)
{
	long rc;

	do {
		rc = FUNC1(H_INT_RESET, flags);
	} while (FUNC0(rc));

	if (rc)
		FUNC2("H_INT_RESET failed %ld\n", rc);

	return rc;
}
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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * ifname ; 
 int /*<<< orphan*/ * ofname ; 

__attribute__((used)) static int FUNC1(void)
{
	int ret = -1;

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto out;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto out;
	}

	ret = 0;

out:
	return ret;
}
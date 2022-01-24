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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC3(char *name, void *buf, ssize_t buflen)
{
	FILE *f;
	size_t done;
	int ret = -1;

	f = FUNC1(name, "r");
	if (f == NULL)
		goto out;

	errno = 0;
	done = FUNC2(buf, buflen, 1, f);
	if (done != 1)
		goto close;

	ret = 0;

close:
	FUNC0(f);
out:
	return ret;
}
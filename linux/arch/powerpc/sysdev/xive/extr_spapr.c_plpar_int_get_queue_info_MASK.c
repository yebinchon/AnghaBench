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
 int /*<<< orphan*/  H_INT_GET_QUEUE_INFO ; 
 int PLPAR_HCALL_BUFSIZE ; 
 scalar_t__ FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,long) ; 

__attribute__((used)) static long FUNC4(unsigned long flags,
				     unsigned long target,
				     unsigned long priority,
				     unsigned long *esn_page,
				     unsigned long *esn_size)
{
	unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
	long rc;

	do {
		rc = FUNC1(H_INT_GET_QUEUE_INFO, retbuf, flags, target,
				 priority);
	} while (FUNC0(rc));

	if (rc) {
		FUNC3("H_INT_GET_QUEUE_INFO cpu=%ld prio=%ld failed %ld\n",
		       target, priority, rc);
		return rc;
	}

	*esn_page = retbuf[0];
	*esn_size = retbuf[1];

	FUNC2("H_INT_GET_QUEUE_INFO page=%lx size=%lx\n",
		retbuf[0], retbuf[1]);

	return 0;
}
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
 int /*<<< orphan*/  H_INT_ESB ; 
 int PLPAR_HCALL_BUFSIZE ; 
 scalar_t__ FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,long) ; 

__attribute__((used)) static long FUNC4(unsigned long flags,
			  unsigned long lisn,
			  unsigned long offset,
			  unsigned long in_data,
			  unsigned long *out_data)
{
	unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
	long rc;

	FUNC2("H_INT_ESB flags=%lx lisn=%lx offset=%lx in=%lx\n",
		flags,  lisn, offset, in_data);

	do {
		rc = FUNC1(H_INT_ESB, retbuf, flags, lisn, offset,
				 in_data);
	} while (FUNC0(rc));

	if (rc) {
		FUNC3("H_INT_ESB lisn=%ld offset=%ld returned %ld\n",
		       lisn, offset, rc);
		return  rc;
	}

	*out_data = retbuf[0];

	return 0;
}
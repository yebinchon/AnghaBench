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
 int /*<<< orphan*/  H_INT_GET_SOURCE_INFO ; 
 int PLPAR_HCALL_BUFSIZE ; 
 scalar_t__ FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,long) ; 

__attribute__((used)) static long FUNC4(unsigned long flags,
				      unsigned long lisn,
				      unsigned long *src_flags,
				      unsigned long *eoi_page,
				      unsigned long *trig_page,
				      unsigned long *esb_shift)
{
	unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
	long rc;

	do {
		rc = FUNC1(H_INT_GET_SOURCE_INFO, retbuf, flags, lisn);
	} while (FUNC0(rc));

	if (rc) {
		FUNC3("H_INT_GET_SOURCE_INFO lisn=%ld failed %ld\n", lisn, rc);
		return rc;
	}

	*src_flags = retbuf[0];
	*eoi_page  = retbuf[1];
	*trig_page = retbuf[2];
	*esb_shift = retbuf[3];

	FUNC2("H_INT_GET_SOURCE_INFO flags=%lx eoi=%lx trig=%lx shift=%lx\n",
		retbuf[0], retbuf[1], retbuf[2], retbuf[3]);

	return 0;
}
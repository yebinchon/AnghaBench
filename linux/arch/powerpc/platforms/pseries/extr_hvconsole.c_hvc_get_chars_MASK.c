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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  H_GET_TERM_CHAR ; 
 long H_SUCCESS ; 
 int PLPAR_HCALL_BUFSIZE ; 
 unsigned long FUNC0 (unsigned long) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 

int FUNC2(uint32_t vtermno, char *buf, int count)
{
	long ret;
	unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
	unsigned long *lbuf = (unsigned long *)buf;

	ret = FUNC1(H_GET_TERM_CHAR, retbuf, vtermno);
	lbuf[0] = FUNC0(retbuf[1]);
	lbuf[1] = FUNC0(retbuf[2]);

	if (ret == H_SUCCESS)
		return retbuf[0];

	return 0;
}
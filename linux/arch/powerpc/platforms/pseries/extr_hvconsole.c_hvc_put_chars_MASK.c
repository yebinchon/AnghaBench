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
 int EAGAIN ; 
 int EIO ; 
 long H_BUSY ; 
 int /*<<< orphan*/  H_PUT_TERM_CHAR ; 
 long H_SUCCESS ; 
 int MAX_VIO_PUT_CHARS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(uint32_t vtermno, const char *buf, int count)
{
	unsigned long *lbuf = (unsigned long *) buf;
	long ret;


	/* hcall will ret H_PARAMETER if 'count' exceeds firmware max.*/
	if (count > MAX_VIO_PUT_CHARS)
		count = MAX_VIO_PUT_CHARS;

	ret = FUNC1(H_PUT_TERM_CHAR, vtermno, count,
				 FUNC0(lbuf[0]),
				 FUNC0(lbuf[1]));
	if (ret == H_SUCCESS)
		return count;
	if (ret == H_BUSY)
		return -EAGAIN;
	return -EIO;
}
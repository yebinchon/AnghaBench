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
struct slip_proto {int /*<<< orphan*/  obuf; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

int FUNC2(int fd, void *buf, int len, struct slip_proto *slip)
{
	int actual, n;

	actual = FUNC1(buf, slip->obuf, len);
	n = FUNC0(fd, slip->obuf, actual);
	if(n < 0)
		return n;
	else return len;
}
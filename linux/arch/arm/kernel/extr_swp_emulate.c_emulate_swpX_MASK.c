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
 unsigned int EAGAIN ; 
 int EFAULT ; 
 unsigned int TYPE_SWPB ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swpbcounter ; 
 int /*<<< orphan*/  swpcounter ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 () ; 

__attribute__((used)) static int FUNC8(unsigned int address, unsigned int *data,
			unsigned int type)
{
	unsigned int res = 0;

	if ((type != TYPE_SWPB) && (address & 0x3)) {
		/* SWP to unaligned address not permitted */
		FUNC4("SWP instruction on unaligned pointer!\n");
		return -EFAULT;
	}

	while (1) {
		unsigned long temp;
		unsigned int __ua_flags;

		__ua_flags = FUNC7();
		if (type == TYPE_SWPB)
			FUNC1(*data, address, res, temp);
		else
			FUNC0(*data, address, res, temp);
		FUNC6(__ua_flags);

		if (FUNC3(res != -EAGAIN) || FUNC5(current))
			break;

		FUNC2();
	}

	if (res == 0) {
		if (type == TYPE_SWPB)
			swpbcounter++;
		else
			swpcounter++;
	}

	return res;
}
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
 unsigned long long FUNC0 (unsigned long) ; 
 unsigned long long FUNC1 (unsigned long) ; 
 unsigned long long FUNC2 (unsigned long) ; 
 unsigned long long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned long) ; 

__attribute__((used)) static unsigned long long FUNC8(unsigned long src_addr, int src_len,
				    unsigned long dst_addr, int dst_len)
{
	unsigned long long tmp = 0;

	switch (src_len) {
	case 1:
		tmp = FUNC0(src_addr);
		break;
	case 2:
		tmp = FUNC3(src_addr);
		break;
	case 4:
		tmp = FUNC1(src_addr);
		break;
	case 8:
		tmp = FUNC2(src_addr);
		break;
	}

	switch (dst_len) {
	case 1:
		FUNC4(tmp, dst_addr);
		break;
	case 2:
		FUNC7(tmp, dst_addr);
		break;
	case 4:
		FUNC5(tmp, dst_addr);
		break;
	case 8:
		FUNC6(tmp, dst_addr);
		break;
	}

	return tmp;
}
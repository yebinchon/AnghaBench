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
struct unw_frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct unw_frame_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct unw_frame_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct unw_frame_info*,unsigned long*) ; 
 scalar_t__ FUNC4 (struct unw_frame_info*) ; 

void
FUNC5 (struct unw_frame_info *info, void *arg)
{
	unsigned long ip, sp, bsp;

	FUNC0("\nCall Trace:\n");
	do {
		FUNC2(info, &ip);
		if (ip == 0)
			break;

		FUNC3(info, &sp);
		FUNC1(info, &bsp);
		FUNC0(" [<%016lx>] %pS\n"
			 "                                sp=%016lx bsp=%016lx\n",
			 ip, (void *)ip, sp, bsp);
	} while (FUNC4(info) >= 0);
}
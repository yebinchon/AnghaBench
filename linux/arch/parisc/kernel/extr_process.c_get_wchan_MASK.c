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
struct unwind_frame_info {unsigned long ip; } ;
struct task_struct {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_UNWIND_ENTRIES ; 
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct unwind_frame_info*,struct task_struct*) ; 
 scalar_t__ FUNC2 (struct unwind_frame_info*) ; 

unsigned long
FUNC3(struct task_struct *p)
{
	struct unwind_frame_info info;
	unsigned long ip;
	int count = 0;

	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;

	/*
	 * These bracket the sleeping functions..
	 */

	FUNC1(&info, p);
	do {
		if (FUNC2(&info) < 0)
			return 0;
		ip = info.ip;
		if (!FUNC0(ip))
			return ip;
	} while (count++ < MAX_UNWIND_ENTRIES);
	return 0;
}
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
struct task_struct {int dummy; } ;

/* Variables and functions */
#define  PTRACE_POKETEXT 128 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct task_struct*,unsigned long,unsigned long) ; 
 int FUNC2 (struct task_struct*,long,unsigned long,unsigned long) ; 

long FUNC3(struct task_struct *child, long request,
		 unsigned long addr, unsigned long data)
{
	int ret = 0;

	switch (request) {
		/*
		 * write the word at location addr.
		 */
	case PTRACE_POKETEXT:
		ret = FUNC1(child, addr, data);
		if (ret == 0 && request == PTRACE_POKETEXT)
			FUNC0(addr, addr + 4);
		break;
	default:
		ret = FUNC2(child, request, addr, data);
		break;
	}

	return ret;
}
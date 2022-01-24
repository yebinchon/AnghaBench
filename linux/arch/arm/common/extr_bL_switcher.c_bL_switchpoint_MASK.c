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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 unsigned int STACK_SIZE ; 
 int /*<<< orphan*/  bL_do_switch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC4 () ; 
 unsigned int FUNC5 () ; 

__attribute__((used)) static int FUNC6(unsigned long _arg)
{
	unsigned int mpidr = FUNC5();
	unsigned int clusterid = FUNC1(mpidr, 1);
	void *stack = FUNC4() + 1;
	stack = FUNC2(stack, L1_CACHE_BYTES);
	stack += clusterid * STACK_SIZE + STACK_SIZE;
	FUNC3(bL_do_switch, (void *)_arg, stack);
	FUNC0();
}
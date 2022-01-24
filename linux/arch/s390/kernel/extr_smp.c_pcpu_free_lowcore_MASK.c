#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcpu {TYPE_1__* lowcore; } ;
struct TYPE_3__ {unsigned long nodat_stack; unsigned long async_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ORDER ; 
 int /*<<< orphan*/  SIGP_SET_PREFIX ; 
 unsigned long STACK_INIT_OFFSET ; 
 int /*<<< orphan*/  THREAD_SIZE_ORDER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** lowcore_ptr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct pcpu* pcpu_devices ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct pcpu *pcpu)
{
	unsigned long async_stack, nodat_stack, lowcore;

	nodat_stack = pcpu->lowcore->nodat_stack - STACK_INIT_OFFSET;
	async_stack = pcpu->lowcore->async_stack - STACK_INIT_OFFSET;
	lowcore = (unsigned long) pcpu->lowcore;

	FUNC2(pcpu, SIGP_SET_PREFIX, 0);
	lowcore_ptr[pcpu - pcpu_devices] = NULL;
	FUNC4(pcpu->lowcore);
	FUNC1(pcpu->lowcore);
	FUNC3(async_stack);
	if (pcpu == &pcpu_devices[0])
		return;
	FUNC0(nodat_stack, THREAD_SIZE_ORDER);
	FUNC0(lowcore, LC_ORDER);
}
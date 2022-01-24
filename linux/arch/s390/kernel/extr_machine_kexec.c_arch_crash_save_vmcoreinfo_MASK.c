#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vmcore_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_CPUS ; 
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __edma ; 
 int /*<<< orphan*/  __sdma ; 
 int /*<<< orphan*/  high_memory ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  lowcore_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	FUNC1(lowcore_ptr);
	FUNC1(high_memory);
	FUNC0(lowcore_ptr, NR_CPUS);
	FUNC3(S390_lowcore.vmcore_info, FUNC4());
	FUNC5("SDMA=%lx\n", __sdma);
	FUNC5("EDMA=%lx\n", __edma);
	FUNC5("KERNELOFFSET=%lx\n", FUNC2());
}
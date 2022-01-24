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
struct TYPE_2__ {int /*<<< orphan*/  khz; } ;

/* Variables and functions */
 int /*<<< orphan*/  HK_FLAG_MISC ; 
 int /*<<< orphan*/  X86_FEATURE_APERFMPERF ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_khz ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ samples ; 

unsigned int FUNC5(int cpu)
{
	if (!cpu_khz)
		return 0;

	if (!FUNC1(X86_FEATURE_APERFMPERF))
		return 0;

	if (!FUNC2(cpu, HK_FLAG_MISC))
		return 0;

	FUNC0(cpu, FUNC3(), true);
	return FUNC4(samples.khz, cpu);
}
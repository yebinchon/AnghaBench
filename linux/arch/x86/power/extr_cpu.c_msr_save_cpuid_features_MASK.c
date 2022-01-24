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
typedef  int /*<<< orphan*/  u32 ;
struct x86_cpu_id {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSR_AMD64_CPUID_FN_1 ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct x86_cpu_id *c)
{
	u32 cpuid_msr_id[] = {
		MSR_AMD64_CPUID_FN_1,
	};

	FUNC2("x86/pm: family %#hx cpu detected, MSR saving is needed during suspending.\n",
		c->family);

	return FUNC1(cpuid_msr_id, FUNC0(cpuid_msr_id));
}
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
struct amd_uncore {unsigned int id; } ;

/* Variables and functions */
 struct amd_uncore* FUNC0 (struct amd_uncore*,scalar_t__) ; 
 scalar_t__ amd_uncore_llc ; 
 scalar_t__ amd_uncore_nb ; 
 int /*<<< orphan*/  cpu_llc_id ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct amd_uncore** FUNC3 (scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	unsigned int eax, ebx, ecx, edx;
	struct amd_uncore *uncore;

	if (amd_uncore_nb) {
		uncore = *FUNC3(amd_uncore_nb, cpu);
		FUNC1(0x8000001e, &eax, &ebx, &ecx, &edx);
		uncore->id = ecx & 0xff;

		uncore = FUNC0(uncore, amd_uncore_nb);
		*FUNC3(amd_uncore_nb, cpu) = uncore;
	}

	if (amd_uncore_llc) {
		uncore = *FUNC3(amd_uncore_llc, cpu);
		uncore->id = FUNC2(cpu_llc_id, cpu);

		uncore = FUNC0(uncore, amd_uncore_llc);
		*FUNC3(amd_uncore_llc, cpu) = uncore;
	}

	return 0;
}
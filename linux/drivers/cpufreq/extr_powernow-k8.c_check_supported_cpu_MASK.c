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
typedef  int u32 ;

/* Variables and functions */
 int CPUID_FREQ_VOLT_CAPABILITIES ; 
 int /*<<< orphan*/  CPUID_GET_MAX_CAPABILITIES ; 
 int /*<<< orphan*/  CPUID_PROCESSOR_SIGNATURE ; 
 int CPUID_USE_XFAM_XMOD ; 
 int CPUID_XFAM ; 
 int CPUID_XFAM_K8 ; 
 int CPUID_XMOD ; 
 int CPUID_XMOD_REV_MASK ; 
 int ENODEV ; 
 int P_STATE_TRANSITION_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int*,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void *_rc)
{
	u32 eax, ebx, ecx, edx;
	int *rc = _rc;

	*rc = -ENODEV;

	eax = FUNC1(CPUID_PROCESSOR_SIGNATURE);

	if ((eax & CPUID_XFAM) == CPUID_XFAM_K8) {
		if (((eax & CPUID_USE_XFAM_XMOD) != CPUID_USE_XFAM_XMOD) ||
		    ((eax & CPUID_XMOD) > CPUID_XMOD_REV_MASK)) {
			FUNC2("Processor cpuid %x not supported\n", eax);
			return;
		}

		eax = FUNC1(CPUID_GET_MAX_CAPABILITIES);
		if (eax < CPUID_FREQ_VOLT_CAPABILITIES) {
			FUNC2("No frequency change capabilities detected\n");
			return;
		}

		FUNC0(CPUID_FREQ_VOLT_CAPABILITIES, &eax, &ebx, &ecx, &edx);
		if ((edx & P_STATE_TRANSITION_CAPABLE)
			!= P_STATE_TRANSITION_CAPABLE) {
			FUNC2("Power state transitions not supported\n");
			return;
		}
		*rc = 0;
	}
}
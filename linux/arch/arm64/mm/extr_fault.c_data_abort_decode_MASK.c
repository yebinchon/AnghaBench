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
 unsigned int ESR_ELx_AR ; 
 unsigned int ESR_ELx_AR_SHIFT ; 
 unsigned int ESR_ELx_CM ; 
 unsigned int ESR_ELx_CM_SHIFT ; 
 unsigned int ESR_ELx_ISS_MASK ; 
 unsigned int ESR_ELx_ISV ; 
 unsigned int ESR_ELx_SAS ; 
 unsigned int ESR_ELx_SAS_SHIFT ; 
 unsigned int ESR_ELx_SF ; 
 unsigned int ESR_ELx_SF_SHIFT ; 
 unsigned int ESR_ELx_SRT_MASK ; 
 unsigned int ESR_ELx_SRT_SHIFT ; 
 unsigned int ESR_ELx_SSE ; 
 unsigned int ESR_ELx_SSE_SHIFT ; 
 unsigned int ESR_ELx_WNR ; 
 unsigned int ESR_ELx_WNR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned int esr)
{
	FUNC0("Data abort info:\n");

	if (esr & ESR_ELx_ISV) {
		FUNC0("  Access size = %u byte(s)\n",
			 1U << ((esr & ESR_ELx_SAS) >> ESR_ELx_SAS_SHIFT));
		FUNC0("  SSE = %lu, SRT = %lu\n",
			 (esr & ESR_ELx_SSE) >> ESR_ELx_SSE_SHIFT,
			 (esr & ESR_ELx_SRT_MASK) >> ESR_ELx_SRT_SHIFT);
		FUNC0("  SF = %lu, AR = %lu\n",
			 (esr & ESR_ELx_SF) >> ESR_ELx_SF_SHIFT,
			 (esr & ESR_ELx_AR) >> ESR_ELx_AR_SHIFT);
	} else {
		FUNC0("  ISV = 0, ISS = 0x%08lx\n", esr & ESR_ELx_ISS_MASK);
	}

	FUNC0("  CM = %lu, WnR = %lu\n",
		 (esr & ESR_ELx_CM) >> ESR_ELx_CM_SHIFT,
		 (esr & ESR_ELx_WNR) >> ESR_ELx_WNR_SHIFT);
}
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
struct rtas_error_log {int dummy; } ;
struct pt_regs {int nip; scalar_t__ msr; } ;
typedef  scalar_t__ __be64 ;

/* Variables and functions */
 int MSR_DR ; 
 int MSR_HV ; 
 int MSR_ILE ; 
 int MSR_IR ; 
 int MSR_LE ; 
 int MSR_ME ; 
 int MSR_PR ; 
 int MSR_RI ; 
 int MSR_SF ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ fwnmi_active ; 
 struct rtas_error_log* FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

int FUNC4(struct pt_regs *regs)
{
#ifdef __LITTLE_ENDIAN__
	/*
	 * Some firmware byteswaps SRR registers and gives incorrect SRR1. Try
	 * to detect the bad SRR1 pattern here. Flip the NIP back to correct
	 * endian for reporting purposes. Unfortunately the MSR can't be fixed,
	 * so clear it. It will be missing MSR_RI so we won't try to recover.
	 */
	if ((FUNC0(regs->msr) &
			(MSR_LE|MSR_RI|MSR_DR|MSR_IR|MSR_ME|MSR_PR|
			 MSR_ILE|MSR_HV|MSR_SF)) == (MSR_DR|MSR_SF)) {
		regs->nip = FUNC0((__be64)regs->nip);
		regs->msr = 0;
	}
#endif

	if (fwnmi_active) {
		struct rtas_error_log *errhdr = FUNC1(regs);
		if (errhdr) {
			/* XXX Should look at FWNMI information */
		}
		FUNC2();
	}

	if (FUNC3(regs))
		return 1;

	return 0; /* need to perform reset */
}
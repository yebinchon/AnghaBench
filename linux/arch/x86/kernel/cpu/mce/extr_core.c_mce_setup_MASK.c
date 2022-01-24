#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mce {int /*<<< orphan*/  microcode; int /*<<< orphan*/  ppin; int /*<<< orphan*/  mcgcap; int /*<<< orphan*/  extcpu; int /*<<< orphan*/  apicid; int /*<<< orphan*/  socketid; int /*<<< orphan*/  cpuid; int /*<<< orphan*/  cpuvendor; int /*<<< orphan*/  time; int /*<<< orphan*/  cpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  microcode; int /*<<< orphan*/  x86_vendor; } ;
struct TYPE_3__ {int /*<<< orphan*/  initial_apicid; int /*<<< orphan*/  phys_proc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_MCG_CAP ; 
 int /*<<< orphan*/  MSR_PPIN ; 
 int /*<<< orphan*/  X86_FEATURE_INTEL_PPIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ boot_cpu_data ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mce*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct mce *m)
{
	FUNC3(m, 0, sizeof(struct mce));
	m->cpu = m->extcpu = FUNC5();
	/* need the internal __ version to avoid deadlocks */
	m->time = FUNC0();
	m->cpuvendor = boot_cpu_data.x86_vendor;
	m->cpuid = FUNC2(1);
	m->socketid = FUNC1(m->extcpu).phys_proc_id;
	m->apicid = FUNC1(m->extcpu).initial_apicid;
	FUNC4(MSR_IA32_MCG_CAP, m->mcgcap);

	if (FUNC6(X86_FEATURE_INTEL_PPIN))
		FUNC4(MSR_PPIN, m->ppin);

	m->microcode = boot_cpu_data.microcode;
}
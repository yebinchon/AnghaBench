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
struct ext_code {int dummy; } ;
struct cpu_cf_events {int flags; int /*<<< orphan*/  alert; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 unsigned int CPU_MF_INT_CF_CACA ; 
 unsigned int CPU_MF_INT_CF_LCDA ; 
 unsigned int CPU_MF_INT_CF_MASK ; 
 unsigned int CPU_MF_INT_CF_MTDA ; 
 int /*<<< orphan*/  IRQEXT_CMC ; 
 int PMU_F_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_cf_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct cpu_cf_events* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ext_code ext_code,
				    unsigned int alert, unsigned long unused)
{
	struct cpu_cf_events *cpuhw;

	if (!(alert & CPU_MF_INT_CF_MASK))
		return;

	FUNC1(IRQEXT_CMC);
	cpuhw = FUNC6(&cpu_cf_events);

	/* Measurement alerts are shared and might happen when the PMU
	 * is not reserved.  Ignore these alerts in this case. */
	if (!(cpuhw->flags & PMU_F_RESERVED))
		return;

	/* counter authorization change alert */
	if (alert & CPU_MF_INT_CF_CACA)
		FUNC4(&cpuhw->info);

	/* loss of counter data alert */
	if (alert & CPU_MF_INT_CF_LCDA)
		FUNC2("CPU[%i] Counter data was lost\n", FUNC5());

	/* loss of MT counter data alert */
	if (alert & CPU_MF_INT_CF_MTDA)
		FUNC3("CPU[%i] MT counter data was lost\n",
			FUNC5());

	/* store alert for special handling by in-kernel users */
	FUNC0(alert, &cpuhw->alert);
}
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
struct ext_code {int dummy; } ;
struct cpu_hw_sf {int flags; int /*<<< orphan*/  qsi; TYPE_1__* event; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 unsigned int CPU_MF_INT_SF_IAE ; 
 unsigned int CPU_MF_INT_SF_ISE ; 
 unsigned int CPU_MF_INT_SF_LSDA ; 
 unsigned int CPU_MF_INT_SF_MASK ; 
 unsigned int CPU_MF_INT_SF_PRA ; 
 unsigned int CPU_MF_INT_SF_SACA ; 
 int /*<<< orphan*/  IRQEXT_CMS ; 
 int PMU_F_ERR_IBE ; 
 int PMU_F_ERR_LSDA ; 
 int PMU_F_IN_USE ; 
 int PMU_F_RESERVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cpu_hw_sf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpu_hw_sf*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  sfdbg ; 
 struct cpu_hw_sf* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ext_code ext_code,
				    unsigned int alert, unsigned long unused)
{
	struct cpu_hw_sf *cpuhw;

	if (!(alert & CPU_MF_INT_SF_MASK))
		return;
	FUNC5(IRQEXT_CMS);
	cpuhw = FUNC9(&cpu_hw_sf);

	/* Measurement alerts are shared and might happen when the PMU
	 * is not reserved.  Ignore these alerts in this case. */
	if (!(cpuhw->flags & PMU_F_RESERVED))
		return;

	/* The processing below must take care of multiple alert events that
	 * might be indicated concurrently. */

	/* Program alert request */
	if (alert & CPU_MF_INT_SF_PRA) {
		if (cpuhw->flags & PMU_F_IN_USE)
			if (FUNC0(&cpuhw->event->hw))
				FUNC3(cpuhw);
			else
				FUNC4(cpuhw->event, 0);
		else
			FUNC1(!(cpuhw->flags & PMU_F_IN_USE));
	}

	/* Report measurement alerts only for non-PRA codes */
	if (alert != CPU_MF_INT_SF_PRA)
		FUNC2(sfdbg, 6, "measurement alert: %#x\n",
				    alert);

	/* Sampling authorization change request */
	if (alert & CPU_MF_INT_SF_SACA)
		FUNC7(&cpuhw->qsi);

	/* Loss of sample data due to high-priority machine activities */
	if (alert & CPU_MF_INT_SF_LSDA) {
		FUNC6("Sample data was lost\n");
		cpuhw->flags |= PMU_F_ERR_LSDA;
		FUNC8();
	}

	/* Invalid sampling buffer entry */
	if (alert & (CPU_MF_INT_SF_IAE|CPU_MF_INT_SF_ISE)) {
		FUNC6("A sampling buffer entry is incorrect (alert=0x%x)\n",
		       alert);
		cpuhw->flags |= PMU_F_ERR_IBE;
		FUNC8();
	}
}
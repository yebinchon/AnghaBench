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
typedef  int u32 ;
struct smca_hwid {unsigned int hwid_mcatype; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int id; scalar_t__ sysfs_id; struct smca_hwid* hwid; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct smca_hwid*) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (int,int) ; 
 int MCI_IPID_HWID ; 
 int MCI_IPID_MCATYPE ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int*) ; 
 scalar_t__ FUNC7 (unsigned int,int /*<<< orphan*/ ,int*,int*) ; 
 TYPE_1__* smca_banks ; 
 struct smca_hwid* smca_hwid_mcatypes ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 

__attribute__((used)) static void FUNC10(unsigned int bank, unsigned int cpu)
{
	unsigned int i, hwid_mcatype;
	struct smca_hwid *s_hwid;
	u32 high, low;
	u32 smca_config = FUNC3(bank);

	/* Set appropriate bits in MCA_CONFIG */
	if (!FUNC6(smca_config, &low, &high)) {
		/*
		 * OS is required to set the MCAX bit to acknowledge that it is
		 * now using the new MSR ranges and new registers under each
		 * bank. It also means that the OS will configure deferred
		 * errors in the new MCx_CONFIG register. If the bit is not set,
		 * uncorrectable errors will cause a system panic.
		 *
		 * MCA_CONFIG[MCAX] is bit 32 (0 in the high portion of the MSR.)
		 */
		high |= FUNC1(0);

		/*
		 * SMCA sets the Deferred Error Interrupt type per bank.
		 *
		 * MCA_CONFIG[DeferredIntTypeSupported] is bit 5, and tells us
		 * if the DeferredIntType bit field is available.
		 *
		 * MCA_CONFIG[DeferredIntType] is bits [38:37] ([6:5] in the
		 * high portion of the MSR). OS should set this to 0x1 to enable
		 * APIC based interrupt. First, check that no interrupt has been
		 * set.
		 */
		if ((low & FUNC1(5)) && !((high >> 5) & 0x3))
			high |= FUNC1(5);

		FUNC9(smca_config, low, high);
	}

	FUNC8(bank, cpu);

	/* Return early if this bank was already initialized. */
	if (smca_banks[bank].hwid)
		return;

	if (FUNC7(cpu, FUNC4(bank), &low, &high)) {
		FUNC5("Failed to read MCA_IPID for bank %d\n", bank);
		return;
	}

	hwid_mcatype = FUNC2(high & MCI_IPID_HWID,
				    (high & MCI_IPID_MCATYPE) >> 16);

	for (i = 0; i < FUNC0(smca_hwid_mcatypes); i++) {
		s_hwid = &smca_hwid_mcatypes[i];
		if (hwid_mcatype == s_hwid->hwid_mcatype) {
			smca_banks[bank].hwid = s_hwid;
			smca_banks[bank].id = low;
			smca_banks[bank].sysfs_id = s_hwid->count++;
			break;
		}
	}
}
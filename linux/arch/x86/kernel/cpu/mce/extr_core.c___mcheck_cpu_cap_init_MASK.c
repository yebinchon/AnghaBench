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
typedef  int u8 ;
typedef  int u64 ;
struct TYPE_2__ {int ser; int /*<<< orphan*/  rip_msr; } ;

/* Variables and functions */
 int MAX_NR_BANKS ; 
 int MCG_BANKCNT_MASK ; 
 int FUNC0 (int) ; 
 int MCG_EXT_P ; 
 int MCG_SER_P ; 
 int /*<<< orphan*/  MSR_IA32_MCG_CAP ; 
 int /*<<< orphan*/  MSR_IA32_MCG_EIP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ mca_cfg ; 
 int /*<<< orphan*/  mce_num_banks ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(void)
{
	u64 cap;
	u8 b;

	FUNC3(MSR_IA32_MCG_CAP, cap);

	b = cap & MCG_BANKCNT_MASK;

	if (b > MAX_NR_BANKS) {
		FUNC2("CPU%d: Using only %u machine check banks out of %u\n",
			FUNC4(), MAX_NR_BANKS, b);
		b = MAX_NR_BANKS;
	}

	FUNC5(mce_num_banks, b);

	FUNC1();

	/* Use accurate RIP reporting if available. */
	if ((cap & MCG_EXT_P) && FUNC0(cap) >= 9)
		mca_cfg.rip_msr = MSR_IA32_MCG_EIP;

	if (cap & MCG_SER_P)
		mca_cfg.ser = 1;
}
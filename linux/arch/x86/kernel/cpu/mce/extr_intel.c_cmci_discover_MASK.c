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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ bios_cmci_threshold; } ;

/* Variables and functions */
 int CMCI_THRESHOLD ; 
 int MCI_CTL2_CMCI_EN ; 
 int MCI_CTL2_CMCI_THRESHOLD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  cmci_discover_lock ; 
 TYPE_1__ mca_cfg ; 
 unsigned long* mce_banks_ce_disabled ; 
 int /*<<< orphan*/  mce_banks_owned ; 
 int /*<<< orphan*/ * mce_poll_banks ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned long*) ; 
 scalar_t__ FUNC9 (int,unsigned long*) ; 
 unsigned long* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(int banks)
{
	unsigned long *owned = (void *)FUNC10(&mce_banks_owned);
	unsigned long flags;
	int i;
	int bios_wrong_thresh = 0;

	FUNC5(&cmci_discover_lock, flags);
	for (i = 0; i < banks; i++) {
		u64 val;
		int bios_zero_thresh = 0;

		if (FUNC9(i, owned))
			continue;

		/* Skip banks in firmware first mode */
		if (FUNC9(i, mce_banks_ce_disabled))
			continue;

		FUNC7(FUNC0(i), val);

		/* Already owned by someone else? */
		if (val & MCI_CTL2_CMCI_EN) {
			FUNC3(i, owned);
			FUNC2(i, FUNC10(mce_poll_banks));
			continue;
		}

		if (!mca_cfg.bios_cmci_threshold) {
			val &= ~MCI_CTL2_CMCI_THRESHOLD_MASK;
			val |= CMCI_THRESHOLD;
		} else if (!(val & MCI_CTL2_CMCI_THRESHOLD_MASK)) {
			/*
			 * If bios_cmci_threshold boot option was specified
			 * but the threshold is zero, we'll try to initialize
			 * it to 1.
			 */
			bios_zero_thresh = 1;
			val |= CMCI_THRESHOLD;
		}

		val |= MCI_CTL2_CMCI_EN;
		FUNC11(FUNC0(i), val);
		FUNC7(FUNC0(i), val);

		/* Did the enable bit stick? -- the bank supports CMCI */
		if (val & MCI_CTL2_CMCI_EN) {
			FUNC8(i, owned);
			FUNC2(i, FUNC10(mce_poll_banks));
			/*
			 * We are able to set thresholds for some banks that
			 * had a threshold of 0. This means the BIOS has not
			 * set the thresholds properly or does not work with
			 * this boot option. Note down now and report later.
			 */
			if (mca_cfg.bios_cmci_threshold && bios_zero_thresh &&
					(val & MCI_CTL2_CMCI_THRESHOLD_MASK))
				bios_wrong_thresh = 1;
		} else {
			FUNC1(!FUNC9(i, FUNC10(mce_poll_banks)));
		}
	}
	FUNC6(&cmci_discover_lock, flags);
	if (mca_cfg.bios_cmci_threshold && bios_wrong_thresh) {
		FUNC4(
			"bios_cmci_threshold: Some banks do not have valid thresholds set\n");
		FUNC4(
			"bios_cmci_threshold: Make sure your BIOS supports this boot option\n");
	}
}
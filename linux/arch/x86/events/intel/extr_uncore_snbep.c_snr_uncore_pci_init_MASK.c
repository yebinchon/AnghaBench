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
 int /*<<< orphan*/  SKX_CPUNODEID ; 
 int /*<<< orphan*/  SKX_GIDNIDMAP ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snr_pci_uncores ; 
 int /*<<< orphan*/  snr_uncore_pci_driver ; 
 int /*<<< orphan*/ * uncore_pci_driver ; 
 int /*<<< orphan*/  uncore_pci_uncores ; 

int FUNC1(void)
{
	/* SNR UBOX DID */
	int ret = FUNC0(0x3460, SKX_CPUNODEID,
					 SKX_GIDNIDMAP, true);

	if (ret)
		return ret;

	uncore_pci_uncores = snr_pci_uncores;
	uncore_pci_driver = &snr_uncore_pci_driver;
	return 0;
}
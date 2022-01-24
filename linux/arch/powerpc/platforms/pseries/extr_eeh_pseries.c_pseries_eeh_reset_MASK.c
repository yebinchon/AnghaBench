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
struct eeh_pe {int config_addr; int addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int /*<<< orphan*/  buid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEH_PE_RST_HOLD_TIME ; 
 int /*<<< orphan*/  EEH_PE_RST_SETTLE_TIME ; 
 int EEH_RESET_FUNDAMENTAL ; 
 int EEH_RESET_HOT ; 
 int /*<<< orphan*/  ibm_set_slot_reset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct eeh_pe *pe, int option)
{
	int config_addr;
	int ret;

	/* Figure out PE address */
	config_addr = pe->config_addr;
	if (pe->addr)
		config_addr = pe->addr;

	/* Reset PE through RTAS call */
	ret = FUNC3(ibm_set_slot_reset, 4, 1, NULL,
			config_addr, FUNC0(pe->phb->buid),
			FUNC1(pe->phb->buid), option);

	/* If fundamental-reset not supported, try hot-reset */
	if (option == EEH_RESET_FUNDAMENTAL &&
	    ret == -8) {
		option = EEH_RESET_HOT;
		ret = FUNC3(ibm_set_slot_reset, 4, 1, NULL,
				config_addr, FUNC0(pe->phb->buid),
				FUNC1(pe->phb->buid), option);
	}

	/* We need reset hold or settlement delay */
	if (option == EEH_RESET_FUNDAMENTAL ||
	    option == EEH_RESET_HOT)
		FUNC2(EEH_PE_RST_HOLD_TIME);
	else
		FUNC2(EEH_PE_RST_SETTLE_TIME);

	return ret;
}
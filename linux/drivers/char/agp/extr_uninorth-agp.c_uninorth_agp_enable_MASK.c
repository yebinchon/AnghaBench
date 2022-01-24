#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct agp_bridge_data {TYPE_1__* dev; scalar_t__ capndx; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AGPSTAT2_4X ; 
 int AGPSTAT_MODE_3_0 ; 
 int AGPSTAT_RQ_DEPTH ; 
 int AGPSTAT_RQ_DEPTH_SHIFT ; 
 scalar_t__ PCI_AGP_COMMAND ; 
 int PCI_AGP_COMMAND_AGP ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int FUNC0 (struct agp_bridge_data*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int) ; 
 int uninorth_rev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct agp_bridge_data *bridge, u32 mode)
{
	u32 command, scratch, status;
	int timeout;

	FUNC3(bridge->dev,
			      bridge->capndx + PCI_AGP_STATUS,
			      &status);

	command = FUNC0(bridge, mode, status);
	command |= PCI_AGP_COMMAND_AGP;

	if (uninorth_rev == 0x21) {
		/*
		 * Darwin disable AGP 4x on this revision, thus we
		 * may assume it's broken. This is an AGP2 controller.
		 */
		command &= ~AGPSTAT2_4X;
	}

	if ((uninorth_rev >= 0x30) && (uninorth_rev <= 0x33)) {
		/*
		 * We need to set REQ_DEPTH to 7 for U3 versions 1.0, 2.1,
		 * 2.2 and 2.3, Darwin do so.
		 */
		if ((command >> AGPSTAT_RQ_DEPTH_SHIFT) > 7)
			command = (command & ~AGPSTAT_RQ_DEPTH)
				| (7 << AGPSTAT_RQ_DEPTH_SHIFT);
	}

	FUNC5(NULL);

	timeout = 0;
	do {
		FUNC4(bridge->dev,
				       bridge->capndx + PCI_AGP_COMMAND,
				       command);
		FUNC3(bridge->dev,
				      bridge->capndx + PCI_AGP_COMMAND,
				       &scratch);
	} while ((scratch & PCI_AGP_COMMAND_AGP) == 0 && ++timeout < 1000);
	if ((scratch & PCI_AGP_COMMAND_AGP) == 0)
		FUNC2(&bridge->dev->dev, "can't write UniNorth AGP "
			"command register\n");

	if (uninorth_rev >= 0x30) {
		/* This is an AGP V3 */
		FUNC1(command, (status & AGPSTAT_MODE_3_0) != 0);
	} else {
		/* AGP V2 */
		FUNC1(command, false);
	}

	FUNC5(NULL);
}
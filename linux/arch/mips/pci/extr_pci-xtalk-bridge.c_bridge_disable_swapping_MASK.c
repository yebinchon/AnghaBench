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
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;
struct bridge_controller {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  w_tflush; } ;

/* Variables and functions */
 struct bridge_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRIDGE_DEV_SWAP_DIR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* b_device ; 
 TYPE_1__ b_widget ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_controller*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	struct bridge_controller *bc = FUNC0(dev->bus);
	int slot = FUNC1(dev->devfn);

	/* Turn off byte swapping */
	FUNC2(bc, b_device[slot].reg, BRIDGE_DEV_SWAP_DIR);
	FUNC3(bc, b_widget.w_tflush);	/* Flush */
}
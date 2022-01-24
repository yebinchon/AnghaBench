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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_3__ {struct pci_dev* link; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_2__ amd_northbridges ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int FUNC3 (struct pci_dev*,int,scalar_t__*) ; 
 int FUNC4 (struct pci_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  smn_mutex ; 

int FUNC6(u16 node, u8 func, u16 reg, u8 instance_id, u32 *lo)
{
	struct pci_dev *F4;
	u32 ficaa;
	int err = -ENODEV;

	if (node >= amd_northbridges.num)
		goto out;

	F4 = FUNC2(node)->link;
	if (!F4)
		goto out;

	ficaa  = 1;
	ficaa |= reg & 0x3FC;
	ficaa |= (func & 0x7) << 11;
	ficaa |= instance_id << 16;

	FUNC0(&smn_mutex);

	err = FUNC4(F4, 0x5C, ficaa);
	if (err) {
		FUNC5("Error writing DF Indirect FICAA, FICAA=0x%x\n", ficaa);
		goto out_unlock;
	}

	err = FUNC3(F4, 0x98, lo);
	if (err)
		FUNC5("Error reading DF Indirect FICAD LO, FICAA=0x%x.\n", ficaa);

out_unlock:
	FUNC1(&smn_mutex);

out:
	return err;
}
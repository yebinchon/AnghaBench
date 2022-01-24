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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_3__ {struct pci_dev* root; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_2__ amd_northbridges ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  smn_mutex ; 

__attribute__((used)) static int FUNC6(u16 node, u32 address, u32 *value, bool write)
{
	struct pci_dev *root;
	int err = -ENODEV;

	if (node >= amd_northbridges.num)
		goto out;

	root = FUNC2(node)->root;
	if (!root)
		goto out;

	FUNC0(&smn_mutex);

	err = FUNC4(root, 0x60, address);
	if (err) {
		FUNC5("Error programming SMN address 0x%x.\n", address);
		goto out_unlock;
	}

	err = (write ? FUNC4(root, 0x64, *value)
		     : FUNC3(root, 0x64, value));
	if (err)
		FUNC5("Error %s SMN address 0x%x.\n",
			(write ? "writing to" : "reading from"), address);

out_unlock:
	FUNC1(&smn_mutex);

out:
	return err;
}
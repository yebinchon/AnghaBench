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
struct pcibios_fwaddrmap {int /*<<< orphan*/ * fw_addr; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 scalar_t__ pcibios_fw_addr_done ; 
 int /*<<< orphan*/  pcibios_fwaddrmap_lock ; 
 struct pcibios_fwaddrmap* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

resource_size_t FUNC3(struct pci_dev *dev, int idx)
{
	unsigned long flags;
	struct pcibios_fwaddrmap *map;
	resource_size_t fw_addr = 0;

	if (pcibios_fw_addr_done)
		return 0;

	FUNC1(&pcibios_fwaddrmap_lock, flags);
	map = FUNC0(dev);
	if (map)
		fw_addr = map->fw_addr[idx];
	FUNC2(&pcibios_fwaddrmap_lock, flags);

	return fw_addr;
}
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
struct pcibios_fwaddrmap {void** fw_addr; int /*<<< orphan*/  list; int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
typedef  void* resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pcibios_fwaddrmap* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ pcibios_fw_addr_done ; 
 int /*<<< orphan*/  pcibios_fwaddrmap_lock ; 
 struct pcibios_fwaddrmap* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  pcibios_fwaddrmappings ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct pci_dev *dev, int idx, resource_size_t fw_addr)
{
	unsigned long flags;
	struct pcibios_fwaddrmap *map;

	if (pcibios_fw_addr_done)
		return;

	FUNC5(&pcibios_fwaddrmap_lock, flags);
	map = FUNC4(dev);
	if (!map) {
		FUNC6(&pcibios_fwaddrmap_lock, flags);
		map = FUNC1(sizeof(*map), GFP_KERNEL);
		if (!map)
			return;

		map->dev = FUNC3(dev);
		map->fw_addr[idx] = fw_addr;
		FUNC0(&map->list);

		FUNC5(&pcibios_fwaddrmap_lock, flags);
		FUNC2(&map->list, &pcibios_fwaddrmappings);
	} else
		map->fw_addr[idx] = fw_addr;
	FUNC6(&pcibios_fwaddrmap_lock, flags);
}